import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/product/core/errors/errors.dart';
import 'package:vest_store/modules/product/domain/entities/product_entity.dart';

abstract class ProductsRepository {
  Future<Either<FailuresProducts, List<ProductsEntity>?>> product();
}
