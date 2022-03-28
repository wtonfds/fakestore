import 'package:json_annotation/json_annotation.dart';
import 'package:vest_store/modules/company_name/domain/entities/company_name_entity.dart';

part 'company_name_model.g.dart';

@JsonSerializable()
class CompanyNameModel extends CompanyNameEntity {
  String? name;

  CompanyNameModel({this.name}) : super(companyName: name);

  factory CompanyNameModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyNameModelFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyNameModelToJson(this);
}
