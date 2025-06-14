import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/data/repository/onboarding_repository.dart';

import 'onboarding_state.dart';

part 'onboarding_event.dart';




class OnboardingBloc extends Bloc<OnboardingEvents, OnboardingState> {
  final OnboardingRepository _repo;

  OnboardingBloc({
    required OnboardingRepository repo,
  })
      : _repo = repo,
        super(OnboardingState.initial()) {
    on<OnboardingLoad>(_onLoading);
    add(OnboardingLoad());
  }


  Future <void> _onLoading(OnboardingLoad event, Emitter<OnboardingState> emit) async {
    final detail = await _repo.fetchOnboarding();
    emit(state.copyWith(onboarding: detail, status: OnboardingStatus.initial));
  }
}