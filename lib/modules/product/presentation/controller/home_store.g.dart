// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$productsListAtom = Atom(name: '_HomeStoreBase.productsList');

  @override
  ObservableList<ProductModel> get productsList {
    _$productsListAtom.reportRead();
    return super.productsList;
  }

  @override
  set productsList(ObservableList<ProductModel> value) {
    _$productsListAtom.reportWrite(value, super.productsList, () {
      super.productsList = value;
    });
  }

  final _$fetchProductsAsyncAction =
      AsyncAction('_HomeStoreBase.fetchProducts');

  @override
  Future<List<ProductModel>> fetchProducts() {
    return _$fetchProductsAsyncAction.run(() => super.fetchProducts());
  }

  @override
  String toString() {
    return '''
productsList: ${productsList}
    ''';
  }
}
