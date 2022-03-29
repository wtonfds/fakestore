import 'package:flutter/material.dart';
import 'package:vest_store/modules/product/data/models/product_model.dart';

class ProductsScreen extends StatelessWidget {
  final ProductModel productModel;

  const ProductsScreen({Key? key, required this.productModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            child: Card(
              elevation: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                    width: size.width * 0.5,
                    child: productModel.image!.isEmpty
                        ? const Text("Product has no image")
                        : Image.network(productModel.image!),
                  ),
                  Text('\$${productModel.price.toString()}'),
                  Text(productModel.title!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
