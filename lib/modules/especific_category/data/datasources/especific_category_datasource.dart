import 'package:vest_store/modules/especific_category/data/models/especific_category_model.dart';

abstract class EspecificCategoryDatasource {
  Future<List<EspecificCategoryModel>?> getProductsByEspecificCategory(
      String especificCategoryName);
}
