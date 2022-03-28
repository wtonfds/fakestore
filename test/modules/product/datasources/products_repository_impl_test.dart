import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:vest_store/modules/product/data/datasouces/product_datasource.dart';
import 'package:vest_store/modules/product/data/models/product_model.dart';
import 'package:vest_store/modules/product/data/repositories/products_repository_impl.dart';
import 'package:vest_store/modules/product/domain/entities/product_entity.dart';

import 'products_repository_impl_test.mocks.dart';

@GenerateMocks([ProductDatasource])
void main() {
  final datasource = MockProductDatasource();
  final repository = ProductsRepositoryImpl(datasource);

  test('SHOULD RETURN A PRODUCTS LIST', () async {
    when(datasource.getProduct()).thenAnswer((_) async => <ProductModel>[]);
    final result = await repository.product();
    expect(result | null, isA<List<ProductsEntity>>());
  });

  test('SHOULD RETURN A ERROR IF THE DATASOURCE FAILURE', () async {
    when(datasource.getProduct()).thenThrow(Exception());
    final result = await repository.product();
    expect(result | null, isA<List<ProductsEntity>?>());
  });
}
