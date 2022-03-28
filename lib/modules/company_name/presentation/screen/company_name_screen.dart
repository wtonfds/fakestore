import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vest_store/modules/company_name/presentation/controller/company_screen_store.dart';

class CompanyNameScreen extends StatefulWidget {
  const CompanyNameScreen({Key? key}) : super(key: key);

  @override
  State<CompanyNameScreen> createState() => _CompanyNameScreen();
}

class _CompanyNameScreen
    extends ModularState<CompanyNameScreen, CompanyScreenStore> {
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Form(
            child: Scaffold(
                backgroundColor: HexColor("#ecf1fa"),
                appBar: AppBar(
                  backgroundColor: Colors.white,
                ),
                body: Card(
                    child: Container(
                        height: 300,
                        color: Colors.white,
                        child: Column(children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  const Expanded(
                                    child: Text('What is your company name?'),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      controller: controller.companyName,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  child: const Text("Next"),
                                  onPressed: () {},
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                TextButton(
                                  child: const Text("Delete"),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ]))))));
  }
}
