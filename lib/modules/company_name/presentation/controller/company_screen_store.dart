import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

part 'company_screen_store.g.dart';

class CompanyScreenStore = CompanyScreenBase with _$CompanyScreenStore;

abstract class CompanyScreenBase with Store {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController companyName = TextEditingController();
}
