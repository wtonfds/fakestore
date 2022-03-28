import 'package:vest_store/modules/all_category/core/errors.dart';
import 'package:vest_store/modules/all_category/domain/entities/category_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/especific_category/domain/usecases/get_products_by_especific_category.dart';

class GetProductsByEspecifiCategoryImpl
    implements GetProductsByEspecificCategory {
  @override
  Future<Either<CategoryError, List<CategoryEntity>?>> call(String category) {
    throw UnimplementedError();
  }
}
