mixin BaseModel<T> {
  T fromJson(Map<String, dynamic> json);

  Map<String, dynamic> get toJson;
}
