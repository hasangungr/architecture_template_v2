// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      type: json['type'] as String?,
      id: json['id'] as String?,
      attributes: json['attributes'] == null
          ? null
          : AttributesModel.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'attributes': instance.attributes,
    };
