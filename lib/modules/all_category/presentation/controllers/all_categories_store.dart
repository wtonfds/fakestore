import 'package:mobx/mobx.dart';
import 'package:vest_store/modules/all_category/data/models/category_model.dart';
import 'package:vest_store/modules/product/data/models/product_model.dart';
import 'package:vest_store/modules/product/external/sources/products_api.dart';

part 'all_categories_store.g.dart';

class AllCategoriesStore = _AllCategoriesStoreBase with _$AllCategoriesStore;

abstract class _AllCategoriesStoreBase with Store {}
