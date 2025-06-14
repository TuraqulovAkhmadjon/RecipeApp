// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingModel {
  int get id;
  String get title;
  String get subtitle;
  String get image;
  int get order;

  /// Create a copy of OnboardingModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnboardingModelCopyWith<OnboardingModel> get copyWith =>
      _$OnboardingModelCopyWithImpl<OnboardingModel>(
          this as OnboardingModel, _$identity);

  /// Serializes this OnboardingModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, subtitle, image, order);

  @override
  String toString() {
    return 'OnboardingModel(id: $id, title: $title, subtitle: $subtitle, image: $image, order: $order)';
  }
}

/// @nodoc
abstract mixin class $OnboardingModelCopyWith<$Res> {
  factory $OnboardingModelCopyWith(
          OnboardingModel value, $Res Function(OnboardingModel) _then) =
      _$OnboardingModelCopyWithImpl;
  @useResult
  $Res call({int id, String title, String subtitle, String image, int order});
}

/// @nodoc
class _$OnboardingModelCopyWithImpl<$Res>
    implements $OnboardingModelCopyWith<$Res> {
  _$OnboardingModelCopyWithImpl(this._self, this._then);

  final OnboardingModel _self;
  final $Res Function(OnboardingModel) _then;

  /// Create a copy of OnboardingModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
    Object? order = null,
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
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OnboardingModel implements OnboardingModel {
  const _OnboardingModel(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.order});
  factory _OnboardingModel.fromJson(Map<String, dynamic> json) =>
      _$OnboardingModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String image;
  @override
  final int order;

  /// Create a copy of OnboardingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnboardingModelCopyWith<_OnboardingModel> get copyWith =>
      __$OnboardingModelCopyWithImpl<_OnboardingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OnboardingModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnboardingModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, subtitle, image, order);

  @override
  String toString() {
    return 'OnboardingModel(id: $id, title: $title, subtitle: $subtitle, image: $image, order: $order)';
  }
}

/// @nodoc
abstract mixin class _$OnboardingModelCopyWith<$Res>
    implements $OnboardingModelCopyWith<$Res> {
  factory _$OnboardingModelCopyWith(
          _OnboardingModel value, $Res Function(_OnboardingModel) _then) =
      __$OnboardingModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String title, String subtitle, String image, int order});
}

/// @nodoc
class __$OnboardingModelCopyWithImpl<$Res>
    implements _$OnboardingModelCopyWith<$Res> {
  __$OnboardingModelCopyWithImpl(this._self, this._then);

  final _OnboardingModel _self;
  final $Res Function(_OnboardingModel) _then;

  /// Create a copy of OnboardingModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? image = null,
    Object? order = null,
  }) {
    return _then(_OnboardingModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
