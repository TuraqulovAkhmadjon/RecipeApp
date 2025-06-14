// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allergic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllergicModel {
  int get id;
  String get title;
  String get image;

  /// Create a copy of AllergicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllergicModelCopyWith<AllergicModel> get copyWith =>
      _$AllergicModelCopyWithImpl<AllergicModel>(
          this as AllergicModel, _$identity);

  /// Serializes this AllergicModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllergicModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  @override
  String toString() {
    return 'AllergicModel(id: $id, title: $title, image: $image)';
  }
}

/// @nodoc
abstract mixin class $AllergicModelCopyWith<$Res> {
  factory $AllergicModelCopyWith(
          AllergicModel value, $Res Function(AllergicModel) _then) =
      _$AllergicModelCopyWithImpl;
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class _$AllergicModelCopyWithImpl<$Res>
    implements $AllergicModelCopyWith<$Res> {
  _$AllergicModelCopyWithImpl(this._self, this._then);

  final AllergicModel _self;
  final $Res Function(AllergicModel) _then;

  /// Create a copy of AllergicModel
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
class _AllergicModel implements AllergicModel {
  const _AllergicModel(
      {required this.id, required this.title, required this.image});
  factory _AllergicModel.fromJson(Map<String, dynamic> json) =>
      _$AllergicModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;

  /// Create a copy of AllergicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllergicModelCopyWith<_AllergicModel> get copyWith =>
      __$AllergicModelCopyWithImpl<_AllergicModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllergicModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllergicModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  @override
  String toString() {
    return 'AllergicModel(id: $id, title: $title, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$AllergicModelCopyWith<$Res>
    implements $AllergicModelCopyWith<$Res> {
  factory _$AllergicModelCopyWith(
          _AllergicModel value, $Res Function(_AllergicModel) _then) =
      __$AllergicModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class __$AllergicModelCopyWithImpl<$Res>
    implements _$AllergicModelCopyWith<$Res> {
  __$AllergicModelCopyWithImpl(this._self, this._then);

  final _AllergicModel _self;
  final $Res Function(_AllergicModel) _then;

  /// Create a copy of AllergicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_AllergicModel(
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
