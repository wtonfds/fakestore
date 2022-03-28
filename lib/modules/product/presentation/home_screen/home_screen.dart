import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vest_store/modules/all_category/presentation/screen/all_categories_screen.dart';
import 'package:vest_store/modules/product/presentation/controller/home_store.dart';
import 'package:vest_store/modules/product/presentation/home_screen/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ModularState<HomeScreen, HomeStore> {
  @override
  void initState() {
    super.initState();
    controller.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#ecf1fa"),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(
            child: Text(
              'Zumeddy',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Column(
          children: [
            const AllCategoriesScreen(),
            Expanded(
              child: Observer(
                builder: (_) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: controller.productsList.length,
                    itemBuilder: (_, index) {
                      return ProductsScreen(
                        productModel: controller.productsList[index],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ));
  }
}
