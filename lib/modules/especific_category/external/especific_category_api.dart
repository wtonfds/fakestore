import 'package:dio/dio.dart';
import 'package:vest_store/modules/especific_category/data/datasources/especific_category_datasource.dart';
import 'package:vest_store/modules/especific_category/data/models/especific_category_model.dart';

class EspecificCategoryApi implements EspecificCategoryDatasource {
  final Dio dio;

  EspecificCategoryApi(this.dio);

  @override
  Future<List<EspecificCategoryModel>?> getProductsByEspecificCategory(
      String especificCategoryName) async {
    final response = await dio.get(
        "https://fakestoreapi.com/products/category/$especificCategoryName");
    if (response.statusCode == 200) {
      final list = (response.data as List)
          .map((e) => EspecificCategoryModel.fromJson(e))
          .toList();
      return list;
    }
  }
}
