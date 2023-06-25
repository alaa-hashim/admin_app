import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  int? productId;
  String? productName;
  String? proudctNamear;
  int? price;
  String? detail;
  String? detailsAr;
  String? proudctImg;
  int? subcatId;
  int? count;
  String? date;
  int? hide;
  int? productDiscount;
  int? proudctActive;
  int? subId;
  String? subcatName;
  String? subcatNamear;
  String? image;
  int? catId;

  Product({
    this.productId,
    this.productName,
    this.proudctNamear,
    this.price,
    this.detail,
    this.detailsAr,
    this.proudctImg,
    this.subcatId,
    this.count,
    this.date,
    this.hide,
    this.productDiscount,
    this.proudctActive,
    this.subId,
    this.subcatName,
    this.subcatNamear,
    this.image,
    this.catId,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
