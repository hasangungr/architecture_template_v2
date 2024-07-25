part of 'user_model.dart';

@JsonSerializable()
@immutable
class Address {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;
  final Geo? geo;

  const Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

@JsonSerializable()
@immutable
class Geo {
  final String? lat;
  final String? lng;

  const Geo({this.lat, this.lng});

  Map<String, dynamic> toJson() => _$GeoToJson(this);

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);
}
