import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/all_category/core/errors.dart';
import 'package:vest_store/modules/all_category/domain/entities/category_entity.dart';

abstract class GetProductsByAllCategories {
  Future<Either<CategoryError, List<CategoryEntity>?>> call();
}
