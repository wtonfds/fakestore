import 'package:json_annotation/json_annotation.dart';
import 'package:vest_store/modules/especific_category/domain/entities/especific_category_entity.dart';

part 'especific_category_model.g.dart';

@JsonSerializable()
class EspecificCategoryModel extends EspecificCategoryEntity {
  String? especificCategoryname;

  EspecificCategoryModel({this.especificCategoryname});

  factory EspecificCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$EspecificCategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$EspecificCategoryModelToJson(this);
}
