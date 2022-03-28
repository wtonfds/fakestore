import 'package:vest_store/modules/product/core/errors/errors.dart';
import 'package:vest_store/modules/product/domain/entities/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetAllProducts {
  Future<Either<FailuresProducts, List<ProductsEntity>?>> call();
}
