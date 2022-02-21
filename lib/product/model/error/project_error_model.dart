import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'project_error_model.g.dart';

@JsonSerializable()
class ProjectErrorModel extends INetworkModel<ProjectErrorModel> {
  String? code;
  String? message;
  ProjectErrorModel({this.code, this.message});
  @override
  ProjectErrorModel fromJson(Map<String, dynamic> json) {
    return _$ProjectErrorModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ProjectErrorModelToJson(this);
  }
}
