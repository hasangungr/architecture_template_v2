// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributesModel _$AttributesModelFromJson(Map<String, dynamic> json) =>
    AttributesModel(
      title: json['title'] as String?,
      body: json['body'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$AttributesModelToJson(AttributesModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
    };
