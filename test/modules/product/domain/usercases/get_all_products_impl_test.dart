import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:vest_store/modules/product/domain/entities/product_entity.dart';
import 'package:vest_store/modules/product/domain/repositories/products_respository.dart';
import 'package:vest_store/modules/product/domain/usecases/get_all_products_impl.dart';
import 'package:mockito/annotations.dart';

import 'get_all_products_impl_test.mocks.dart';

@GenerateMocks([ProductsRepository])
void main() {
  final repository = MockProductsRepository();

  final usercase = GetAllProductsImpl(repository);
  test('SHOULD RETURN A PRODUCTS LIST', () async {
    when(repository.product())
        .thenAnswer((_) async => const Right(<ProductsEntity>[]));

    final result = await usercase();
    expect(result, isA<Right>());
    expect(result.getOrElse(() => null), isA<List<ProductsEntity>>());
  });
}
