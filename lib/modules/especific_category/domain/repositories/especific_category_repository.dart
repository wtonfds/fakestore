import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/all_category/domain/entities/category_entity.dart';
import 'package:vest_store/modules/especific_category/core/errors.dart';
import 'package:vest_store/modules/especific_category/domain/entities/especific_category_entity.dart';

abstract class EspecificCategoryRepository {
  Future<Either<EspecificError, List<EspecificCategoryEntity>?>> call(
      String especificCategory);
}
