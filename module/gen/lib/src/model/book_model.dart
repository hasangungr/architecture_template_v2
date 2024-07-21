import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

import 'attributes_model.dart';
part 'book_model.g.dart';

@JsonSerializable()
@immutable
final class BookModel with EquatableMixin {
  final String? type;
  final String? id;
  final AttributesModel? attributes;

  BookModel({this.type, this.id, this.attributes});

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookModelToJson(this);

  @override
  List<Object?> get props => [type, id, attributes];

  BookModel copyWith(
      {final String? type,
      final String? id,
      final AttributesModel? attributes}) {
    return BookModel(
        type: type ?? this.type,
        id: id ?? this.id,
        attributes: attributes ?? this.attributes);
  }
}
