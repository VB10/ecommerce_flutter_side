// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel()
      ..id = json['id'] as String?
      ..image = json['image'] as String?
      ..name = json['name'] as String?;

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
    };

LatestModel _$LatestModelFromJson(Map<String, dynamic> json) => LatestModel()
  ..id = json['id'] as String?
  ..image = json['image'] as String?;

Map<String, dynamic> _$LatestModelToJson(LatestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
