// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnboardingModel _$OnboardingModelFromJson(Map<String, dynamic> json) =>
    _OnboardingModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
      order: (json['order'] as num).toInt(),
    );

Map<String, dynamic> _$OnboardingModelToJson(_OnboardingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'order': instance.order,
    };
