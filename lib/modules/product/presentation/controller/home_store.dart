import 'package:mobx/mobx.dart';
import 'package:vest_store/modules/product/data/models/product_model.dart';
import 'package:vest_store/modules/product/external/sources/products_api.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  final ProductsApi productsApi;

  _HomeStoreBase(this.productsApi);

  @observable
  ObservableList<ProductModel> productsList = ObservableList();

  @action
  Future<List<ProductModel>> fetchProducts() async {
    final unsortedProducts = await productsApi.getProduct();
    productsList = unsortedProducts!.asObservable();

    print(productsList[1].title);

    return productsList;
  }
}
