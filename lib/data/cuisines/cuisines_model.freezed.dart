// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cuisines_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CuisinesModel {
  int get id;
  String get title;
  String get image;

  /// Create a copy of CuisinesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CuisinesModelCopyWith<CuisinesModel> get copyWith =>
      _$CuisinesModelCopyWithImpl<CuisinesModel>(
          this as CuisinesModel, _$identity);

  /// Serializes this CuisinesModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CuisinesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  @override
  String toString() {
    return 'CuisinesModel(id: $id, title: $title, image: $image)';
  }
}

/// @nodoc
abstract mixin class $CuisinesModelCopyWith<$Res> {
  factory $CuisinesModelCopyWith(
          CuisinesModel value, $Res Function(CuisinesModel) _then) =
      _$CuisinesModelCopyWithImpl;
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class _$CuisinesModelCopyWithImpl<$Res>
    implements $CuisinesModelCopyWith<$Res> {
  _$CuisinesModelCopyWithImpl(this._self, this._then);

  final CuisinesModel _self;
  final $Res Function(CuisinesModel) _then;

  /// Create a copy of CuisinesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CuisinesModel implements CuisinesModel {
  const _CuisinesModel(
      {required this.id, required this.title, required this.image});
  factory _CuisinesModel.fromJson(Map<String, dynamic> json) =>
      _$CuisinesModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;

  /// Create a copy of CuisinesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CuisinesModelCopyWith<_CuisinesModel> get copyWith =>
      __$CuisinesModelCopyWithImpl<_CuisinesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CuisinesModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CuisinesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  @override
  String toString() {
    return 'CuisinesModel(id: $id, title: $title, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$CuisinesModelCopyWith<$Res>
    implements $CuisinesModelCopyWith<$Res> {
  factory _$CuisinesModelCopyWith(
          _CuisinesModel value, $Res Function(_CuisinesModel) _then) =
      __$CuisinesModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class __$CuisinesModelCopyWithImpl<$Res>
    implements _$CuisinesModelCopyWith<$Res> {
  __$CuisinesModelCopyWithImpl(this._self, this._then);

  final _CuisinesModel _self;
  final $Res Function(_CuisinesModel) _then;

  /// Create a copy of CuisinesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_CuisinesModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
