import 'package:bloc/bloc.dart';
import 'package:recipe_app/data/repository/category_repository.dart';
import 'package:recipe_app/features/category/maneger/category_state.dart';

part 'category_event.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository _categoryRepo;

  CategoryBloc({required CategoryRepository categoryRepo})
      : _categoryRepo = categoryRepo,
        super(CategoryState.initial()) {
    on<CategoryLoad>(_onLoad);
    add(CategoryLoad());
  }

  Future<void> _onLoad(CategoryLoad event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(status: CategoryStatus.loading));
    final detail = await _categoryRepo.fetchCategories();
    emit(state.copyWith(category: detail, status: CategoryStatus.success));
  }
}
