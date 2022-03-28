import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:vest_store/modules/product/core/utils/products_mock_api.dart';
import 'package:vest_store/modules/product/external/sources/products_api.dart';

class DioMock extends Mock implements Dio {}

void main() {
  final dio = DioMock();
  final datasource = ProductsApi(dio);

  test("SHOULD RETURN A PRODUCTS LIST", () async {
    when(dio.get('https://fakestoreapi.com/products/1')).thenAnswer((_) async =>
        Response(
            requestOptions: RequestOptions(path: 'gfh', baseUrl: "fgh"),
            data: jsonDecode(productsResult),
            statusCode: 200));

    final result = await datasource.getProduct();
    expect(result, completes);
  });
}
