import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel extends INetworkModel<ProductModel> {
  String? id;
  String? categoiryId;
  int? money;
  String? image;
  String? title;

  @override
  ProductModel fromJson(Map<String, dynamic> json) {
    return _$ProductModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ProductModelToJson(this);
  }
}
