import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/onboarding/onboarding_model.dart';

part 'onboarding_state.freezed.dart';

enum OnboardingStatus { error, loading, initial }

@freezed
 abstract class OnboardingState with _$OnboardingState {
  const factory OnboardingState({



    required List<OnboardingModel> onboarding,
    required OnboardingStatus status,
  }) = _OnboardingState;

  factory OnboardingState.initial() {
    return  OnboardingState(
      onboarding: [],
      status: OnboardingStatus.initial,
    );
  }
}
