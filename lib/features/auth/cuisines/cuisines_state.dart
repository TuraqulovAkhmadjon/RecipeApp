import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/cuisines/cuisines_model.dart';


part 'cuisines_state.freezed.dart';

enum CuisinesStatus { error, loading, initial, success }

@freezed
abstract class CuisinesState with _$CuisinesState {
  const factory CuisinesState({
    required List<CuisinesModel> cuisines,
    required CuisinesStatus status,
  }) = _CuisinesState;

  factory CuisinesState.initial() {
    return const CuisinesState(
      cuisines: [],
      status: CuisinesStatus.initial,
    );
  }
}
