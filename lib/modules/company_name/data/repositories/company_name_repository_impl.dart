import 'package:vest_store/modules/company_name/core/errors.dart';
import 'package:vest_store/modules/company_name/data/datasource/company_name_datasource.dart';
import 'package:vest_store/modules/company_name/domain/entities/company_name_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:vest_store/modules/company_name/domain/repositories/company_name_repository.dart';

class CompanyNameRepositoryImpl implements CompanyNameRepository {
  final CompanyNameDatasource companyNameDatasource;

  CompanyNameRepositoryImpl(this.companyNameDatasource);

  @override
  Future<Either<CompanyNameError, CompanyNameEntity?>> companyName(
      String companyName) async {
    try {
      final result = await companyNameDatasource.storeCompanyName(companyName);
      return Right(result);
    } catch (e) {
      return Left(CompanyNameError());
    }
  }
}
