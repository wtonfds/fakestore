import 'package:dio/dio.dart';
import 'package:vest_store/modules/all_category/data/datasources/category_datasource.dart';
import 'package:vest_store/modules/all_category/data/models/category_model.dart';

class AllCategoryApi implements CategoryDatasource {
  final Dio dio;

  AllCategoryApi(this.dio);

  @override
  Future<List<CategoryModel>?> getAllProductsByCategory() async {
    final response =
        await dio.get("https://fakestoreapi.com/products/categories");
    if (response.statusCode == 200) {
      final list = (response.data as List)
          .map((e) => CategoryModel.fromJson(e))
          .toList();

      return list;
    }
  }
}
