import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'normal_response.g.dart';

@JsonSerializable()
class NormalResponseModel extends INetworkModel<NormalResponseModel> {
  String? message;
  NormalResponseModel({
    this.message,
  });
  @override
  NormalResponseModel fromJson(Map<String, dynamic> json) {
    return _$NormalResponseModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$NormalResponseModelToJson(this);
  }
}
