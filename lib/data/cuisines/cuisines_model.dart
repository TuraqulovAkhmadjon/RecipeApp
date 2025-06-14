import 'package:freezed_annotation/freezed_annotation.dart';

part 'cuisines_model.freezed.dart';
part 'cuisines_model.g.dart';

@freezed
abstract class CuisinesModel with _$CuisinesModel{
  const factory CuisinesModel({
    required int id,
    required String title,
    required String image,
  }) = _CuisinesModel;

  factory CuisinesModel.fromJson(Map<String, dynamic> json) =>
      _$CuisinesModelFromJson(json);
}
