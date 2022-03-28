import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/company_name/core/errors.dart';
import 'package:vest_store/modules/company_name/domain/entities/company_name_entity.dart';

abstract class CompanyNameRepository {
  Future<Either<CompanyNameError, CompanyNameEntity?>> companyName(
      String companyName);
}
