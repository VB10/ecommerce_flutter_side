import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'email_model.g.dart';

@JsonSerializable()
class EmailModel extends INetworkModel<EmailModel> {
  String? email;
  EmailModel({this.email});
  @override
  EmailModel fromJson(Map<String, dynamic> json) {
    return _$EmailModelFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$EmailModelToJson(this);
  }
}
