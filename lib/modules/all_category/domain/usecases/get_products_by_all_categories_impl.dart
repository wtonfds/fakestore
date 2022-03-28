import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/all_category/core/errors.dart';
import 'package:vest_store/modules/all_category/domain/entities/category_entity.dart';
import 'package:vest_store/modules/all_category/domain/usecases/get_products_by_all_categories.dart';

class GetProductsByAllCategoriesImpl implements GetProductsByAllCategories {
  @override
  Future<Either<CategoryError, List<CategoryEntity>?>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}
