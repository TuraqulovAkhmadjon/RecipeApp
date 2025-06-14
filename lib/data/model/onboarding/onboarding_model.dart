import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_model.freezed.dart';
part 'onboarding_model.g.dart';

@freezed
abstract class OnboardingModel with _$OnboardingModel {
  const factory OnboardingModel({
    required int id,
    required String title,
    required String subtitle,
    required String image,
    required int order,
  }) = _OnboardingModel;

  factory OnboardingModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingModelFromJson(json);
}
