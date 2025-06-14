import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/data/repository/cuisines_repository.dart';
import 'cuisines_state.dart';
part 'cuisines_event.dart';

class CuisinesBloc extends Bloc<CuisinesEvent, CuisinesState> {
  final CuisinesRepository _cuisinesRepo;

  CuisinesBloc({required CuisinesRepository cuisinesRepo})
      : _cuisinesRepo = cuisinesRepo,
        super(CuisinesState.initial()) {
    on<CuisinesLoad>(_onLoad);
    add(CuisinesLoad());
  }

  Future<void> _onLoad(CuisinesLoad event, Emitter<CuisinesState> emit) async {
    emit(state.copyWith(status: CuisinesStatus.loading));
    final detail = await _cuisinesRepo.fetchCuisines();
    emit(state.copyWith(cuisines: detail, status: CuisinesStatus.success));
  }
}
