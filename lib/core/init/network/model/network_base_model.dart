abstract class NetworkBaseModel<T> {
  Map<String, Object> toJson();
  T fromJson(Map<String, Object> json);
}
