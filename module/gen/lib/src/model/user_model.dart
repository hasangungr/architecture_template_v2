import 'package:flutter/widgets.dart';
import 'package:gen/src/model/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_model.dart';
part 'company_model.dart';

part 'user_model.g.dart';

@JsonSerializable()
@immutable
class User with BaseModel {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final Address? address;
  final String? phone;
  final String? website;
  final Company? company;

  const User({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  @override
  Map<String, dynamic> get toJson => _$UserToJson(this);

  @override
  fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // @override
  // List<Object?> get props =>
  //     [id, name, username, email, address, phone, website, company];
}
