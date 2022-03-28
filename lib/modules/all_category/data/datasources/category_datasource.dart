import 'package:vest_store/modules/all_category/data/models/category_model.dart';

abstract class CategoryDatasource {
  Future<List<CategoryModel>?> getAllProductsByCategory();
}
