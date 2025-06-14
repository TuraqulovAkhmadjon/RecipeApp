import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/data/model/category/category_model.dart';

part 'category_state.freezed.dart';

enum CategoryStatus { error, loading, initial,success }

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    required List<CategoryModel> category,
    required CategoryStatus status,
  }) = _CategoryState;

  factory CategoryState.initial() {
    return const CategoryState(
      category: [],
      status: CategoryStatus.initial,
    );
  }
}
