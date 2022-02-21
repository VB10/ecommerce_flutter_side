import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel extends INetworkModel<CategoryModel> {
  String? id;
  String? image;
  String? name;

  @override
  CategoryModel fromJson(Map<String, dynamic> json) {
    return _$CategoryModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryModelToJson(this);
  }
}

@JsonSerializable()
class LatestModel extends INetworkModel<LatestModel> {
  String? id;
  String? image;

  @override
  LatestModel fromJson(Map<String, dynamic> json) {
    return _$LatestModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LatestModelToJson(this);
  }
}
