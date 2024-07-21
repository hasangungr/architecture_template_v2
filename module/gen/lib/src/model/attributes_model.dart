import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'attributes_model.g.dart';

@JsonSerializable()
@immutable
final class AttributesModel with EquatableMixin {
  final String? title;
  final String? body;
  final DateTime? created;
  final DateTime? updated;

  AttributesModel({this.title, this.body, this.created, this.updated});

  factory AttributesModel.fromJson(Map<String, dynamic> json) =>
      _$AttributesModelFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesModelToJson(this);

  @override
  List<Object?> get props => [title, body, created, updated];

  AttributesModel copyWith({
    final String? title,
    final String? body,
    final DateTime? created,
    final DateTime? updated,
  }) {
    return AttributesModel(
      title: title ?? this.title,
      body: body ?? this.body,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }
}
