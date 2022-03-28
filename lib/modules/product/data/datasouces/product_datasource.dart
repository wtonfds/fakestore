import 'package:vest_store/modules/product/data/models/product_model.dart';

abstract class ProductDatasource {
  Future<List<ProductModel>?> getProduct();
}
