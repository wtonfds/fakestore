import 'package:vest_store/modules/all_category/core/errors.dart';
import 'package:vest_store/modules/all_category/data/datasources/category_datasource.dart';
import 'package:vest_store/modules/all_category/domain/entities/category_entity.dart';
import 'package:vest_store/modules/all_category/domain/repositories/category_repository.dart';
import 'package:dartz/dartz.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDatasource categoryDatasource;

  CategoryRepositoryImpl(this.categoryDatasource);

  @override
  Future<Either<CategoryError, List<CategoryEntity>?>> category() async {
    try {
      final result = await categoryDatasource.getAllProductsByCategory();
      return Right(result);
    } catch (e) {
      return Left(CategoryError());
    }
  }
}
