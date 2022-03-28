import 'package:dio/dio.dart';
import 'package:vest_store/modules/product/data/datasouces/product_datasource.dart';
import 'package:vest_store/modules/product/data/models/product_model.dart';

class ProductsApi implements ProductDatasource {
  final Dio dio;

  ProductsApi(this.dio);

  @override
  Future<List<ProductModel>?> getProduct() async {
    final response = await dio.get("https://fakestoreapi.com/products");

    if (response.statusCode == 200) {
      final list =
          (response.data as List).map((e) => ProductModel.fromJson(e)).toList();
      return list;
    }
  }
}
