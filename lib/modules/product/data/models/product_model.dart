import 'package:vest_store/modules/product/domain/entities/product_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends ProductsEntity {
  int? idProduct;
  String? titleProduct;
  double? priceProduct;
  String? descriptionProduct;
  String? categoryProduct;
  String? imageProduct;

  ProductModel(
      {this.idProduct,
      this.titleProduct,
      this.priceProduct,
      this.descriptionProduct,
      this.categoryProduct,
      this.imageProduct})
      : super(
            id: idProduct,
            title: titleProduct,
            price: priceProduct,
            description: descriptionProduct,
            category: categoryProduct,
            image: imageProduct);

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
