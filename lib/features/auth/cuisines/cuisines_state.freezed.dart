// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cuisines_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CuisinesState {
  List<CuisinesModel> get cuisines;
  CuisinesStatus get status;

  /// Create a copy of CuisinesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CuisinesStateCopyWith<CuisinesState> get copyWith =>
      _$CuisinesStateCopyWithImpl<CuisinesState>(
          this as CuisinesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CuisinesState &&
            const DeepCollectionEquality().equals(other.cuisines, cuisines) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cuisines), status);

  @override
  String toString() {
    return 'CuisinesState(cuisines: $cuisines, status: $status)';
  }
}

/// @nodoc
abstract mixin class $CuisinesStateCopyWith<$Res> {
  factory $CuisinesStateCopyWith(
          CuisinesState value, $Res Function(CuisinesState) _then) =
      _$CuisinesStateCopyWithImpl;
  @useResult
  $Res call({List<CuisinesModel> cuisines, CuisinesStatus status});
}

/// @nodoc
class _$CuisinesStateCopyWithImpl<$Res>
    implements $CuisinesStateCopyWith<$Res> {
  _$CuisinesStateCopyWithImpl(this._self, this._then);

  final CuisinesState _self;
  final $Res Function(CuisinesState) _then;

  /// Create a copy of CuisinesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cuisines = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      cuisines: null == cuisines
          ? _self.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisinesModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CuisinesStatus,
    ));
  }
}

/// @nodoc

class _CuisinesState implements CuisinesState {
  const _CuisinesState(
      {required final List<CuisinesModel> cuisines, required this.status})
      : _cuisines = cuisines;

  final List<CuisinesModel> _cuisines;
  @override
  List<CuisinesModel> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  @override
  final CuisinesStatus status;

  /// Create a copy of CuisinesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CuisinesStateCopyWith<_CuisinesState> get copyWith =>
      __$CuisinesStateCopyWithImpl<_CuisinesState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CuisinesState &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cuisines), status);

  @override
  String toString() {
    return 'CuisinesState(cuisines: $cuisines, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$CuisinesStateCopyWith<$Res>
    implements $CuisinesStateCopyWith<$Res> {
  factory _$CuisinesStateCopyWith(
          _CuisinesState value, $Res Function(_CuisinesState) _then) =
      __$CuisinesStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<CuisinesModel> cuisines, CuisinesStatus status});
}

/// @nodoc
class __$CuisinesStateCopyWithImpl<$Res>
    implements _$CuisinesStateCopyWith<$Res> {
  __$CuisinesStateCopyWithImpl(this._self, this._then);

  final _CuisinesState _self;
  final $Res Function(_CuisinesState) _then;

  /// Create a copy of CuisinesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cuisines = null,
    Object? status = null,
  }) {
    return _then(_CuisinesState(
      cuisines: null == cuisines
          ? _self._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<CuisinesModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as CuisinesStatus,
    ));
  }
}

// dart format on
