import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/allergic/allergic_model.dart';


part 'allergic_state.freezed.dart';

enum AllergicStatus { error, loading, initial, success }

@freezed
abstract class AllergicState with _$AllergicState {
  const factory AllergicState({
    required List<AllergicModel> allergic,
    required AllergicStatus status,
  }) = _AllergicState;

  factory AllergicState.initial() {
    return const AllergicState(
      allergic: [],
      status: AllergicStatus.initial,
    );
  }
}
