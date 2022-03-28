import 'package:vest_store/modules/company_name/data/models/company_name_model.dart';

abstract class CompanyNameDatasource {
  Future<CompanyNameModel>? storeCompanyName(String companyName);
}
