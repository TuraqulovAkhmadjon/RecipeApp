import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/data/repository/allergiv_repository.dart';

import 'allergic_state.dart';

part 'allergic_event.dart';

class AllergicBloc extends Bloc<AllergicEvent, AllergicState> {
  final AllergicRepository _allergicRepo;

  AllergicBloc({required AllergicRepository allergicRepo})
      : _allergicRepo = allergicRepo,
        super(AllergicState.initial()) {
    on<AllergicLoad>(_onLoad);
    add(AllergicLoad());
  }

  Future<void> _onLoad(AllergicLoad event, Emitter<AllergicState> emit) async {
    emit(state.copyWith(status: AllergicStatus.loading));
    final detail = await _allergicRepo.fetchAllergic();
    emit(state.copyWith(allergic: detail, status: AllergicStatus.success));
  }
}
