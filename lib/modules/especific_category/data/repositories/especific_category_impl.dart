import 'package:vest_store/modules/especific_category/core/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/especific_category/data/datasources/especific_category_datasource.dart';
import 'package:vest_store/modules/especific_category/data/models/especific_category_model.dart';
import 'package:vest_store/modules/especific_category/domain/entities/especific_category_entity.dart';
import 'package:vest_store/modules/especific_category/domain/repositories/especific_category_repository.dart';
import 'package:vest_store/modules/product/core/errors/errors.dart';

class EspecificCategoryimpl implements EspecificCategoryRepository {
  final EspecificCategoryDatasource datasource;

  EspecificCategoryimpl(this.datasource);

  @override
  Future<Either<EspecificError, List<EspecificCategoryEntity>?>> call(
      String especificCategory) async {
    try {
      final result =
          await datasource.getProductsByEspecificCategory(especificCategory);
      return Right(result);
    } catch (e) {
      return Left(EspecificError());
    }
  }
}
