// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String?,
      categoiryId: json['categoiryId'] as String?,
      money: (json['money'] as num?)?.toDouble(),
      image: json['image'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoiryId': instance.categoiryId,
      'money': instance.money,
      'image': instance.image,
      'title': instance.title,
    };
