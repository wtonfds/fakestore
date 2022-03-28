import 'package:vest_store/modules/company_name/domain/entities/company_name_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/company_name/domain/usecases/storage_company_name.dart';
import 'package:vest_store/modules/product/core/errors/errors.dart';

class StorageCompanyNameImpl implements StorageCompanyName {
  @override
  Future<Either<FailuresProducts, CompanyNameEntity>?> call(
      String companyName) {
    throw UnimplementedError();
  }
}
