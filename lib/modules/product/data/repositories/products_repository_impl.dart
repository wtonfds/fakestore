import 'package:vest_store/modules/product/data/datasouces/product_datasource.dart';
import 'package:vest_store/modules/product/domain/entities/product_entity.dart';
import 'package:vest_store/modules/product/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/product/domain/repositories/products_respository.dart';

class ProductsRepositoryImpl implements ProductsRepository {
  final ProductDatasource productDatasource;

  ProductsRepositoryImpl(this.productDatasource);

  @override
  Future<Either<FailuresProducts, List<ProductsEntity>?>> product() async {
    try {
      final result = await productDatasource.getProduct();
      return Right(result);
    } catch (e) {
      return Left(DatasourceError());
    }
  }
}
