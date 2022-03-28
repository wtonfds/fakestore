// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyNameModel _$CompanyNameModelFromJson(Map<String, dynamic> json) =>
    CompanyNameModel(
      name: json['name'] as String?,
    )..companyName = json['companyName'] as String?;

Map<String, dynamic> _$CompanyNameModelToJson(CompanyNameModel instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'name': instance.name,
    };
