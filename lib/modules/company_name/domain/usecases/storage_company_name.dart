import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/company_name/domain/entities/company_name_entity.dart';
import 'package:vest_store/modules/product/core/errors/errors.dart';

abstract class StorageCompanyName {
  Future<Either<FailuresProducts, CompanyNameEntity>?> call(String companyName);
}
