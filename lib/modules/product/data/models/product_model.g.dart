// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      idProduct: json['idProduct'] as int?,
      titleProduct: json['titleProduct'] as String?,
      priceProduct: (json['priceProduct'] as num?)?.toDouble(),
      descriptionProduct: json['descriptionProduct'] as String?,
      categoryProduct: json['categoryProduct'] as String?,
      imageProduct: json['imageProduct'] as String?,
    )
      ..id = json['id'] as int?
      ..title = json['title'] as String?
      ..price = (json['price'] as num?)?.toDouble()
      ..description = json['description'] as String?
      ..category = json['category'] as String?
      ..image = json['image'] as String?;

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'idProduct': instance.idProduct,
      'titleProduct': instance.titleProduct,
      'priceProduct': instance.priceProduct,
      'descriptionProduct': instance.descriptionProduct,
      'categoryProduct': instance.categoryProduct,
      'imageProduct': instance.imageProduct,
    };
