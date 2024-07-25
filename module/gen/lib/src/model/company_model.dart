part of 'user_model.dart';

@JsonSerializable()
@immutable
class Company  {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  const Company({this.name, this.catchPhrase, this.bs});

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

}
