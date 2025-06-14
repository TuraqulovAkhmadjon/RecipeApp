// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allergic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllergicModel _$AllergicModelFromJson(Map<String, dynamic> json) =>
    _AllergicModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$AllergicModelToJson(_AllergicModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };
