import 'package:vest_store/modules/product/domain/entities/product_entity.dart';
import 'package:vest_store/modules/product/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/product/domain/repositories/products_respository.dart';
import 'package:vest_store/modules/product/domain/usecases/get_all_products.dart';

class GetAllProductsImpl implements GetAllProducts {
  final ProductsRepository repository;

  GetAllProductsImpl(this.repository);

  @override
  Future<Either<FailuresProducts, List<ProductsEntity>?>> call() async {
    return repository.product();
  }
}
