// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuisines_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CuisinesModel _$CuisinesModelFromJson(Map<String, dynamic> json) =>
    _CuisinesModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CuisinesModelToJson(_CuisinesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };
