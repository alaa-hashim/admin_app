// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      productId: json['productId'] as int?,
      productName: json['productName'] as String?,
      proudctNamear: json['proudctNamear'] as String?,
      price: json['price'] as int?,
      detail: json['detail'] as String?,
      detailsAr: json['detailsAr'] as String?,
      proudctImg: json['proudctImg'] as String?,
      subcatId: json['subcatId'] as int?,
      count: json['count'] as int?,
      date: json['date'] as String?,
      hide: json['hide'] as int?,
      productDiscount: json['productDiscount'] as int?,
      proudctActive: json['proudctActive'] as int?,
      subId: json['subId'] as int?,
      subcatName: json['subcatName'] as String?,
      subcatNamear: json['subcatNamear'] as String?,
      image: json['image'] as String?,
      catId: json['catId'] as int?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'proudctNamear': instance.proudctNamear,
      'price': instance.price,
      'detail': instance.detail,
      'detailsAr': instance.detailsAr,
      'proudctImg': instance.proudctImg,
      'subcatId': instance.subcatId,
      'count': instance.count,
      'date': instance.date,
      'hide': instance.hide,
      'productDiscount': instance.productDiscount,
      'proudctActive': instance.proudctActive,
      'subId': instance.subId,
      'subcatName': instance.subcatName,
      'subcatNamear': instance.subcatNamear,
      'image': instance.image,
      'catId': instance.catId,
    };
