import 'package:freezed_annotation/freezed_annotation.dart';

part 'allergic_model.freezed.dart';
part 'allergic_model.g.dart';

@freezed
abstract class AllergicModel with _$AllergicModel{
  const factory AllergicModel({
    required int id,
    required String title,
    required String image,
  }) = _AllergicModel;

  factory AllergicModel.fromJson(Map<String, dynamic> json) =>
      _$AllergicModelFromJson(json);
}
