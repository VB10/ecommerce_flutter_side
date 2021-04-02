class NetworkBaseError {
  final int statusCode;
  final String message;

  NetworkBaseError(this.statusCode, this.message);
}

class ServiceError {
  int statusCode;
  String message;

  ServiceError({this.statusCode, this.message});

  ServiceError.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}
