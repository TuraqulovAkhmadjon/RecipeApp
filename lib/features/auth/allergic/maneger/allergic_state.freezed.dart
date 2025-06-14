// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allergic_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllergicState {
  List<AllergicModel> get allergic;
  AllergicStatus get status;

  /// Create a copy of AllergicState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllergicStateCopyWith<AllergicState> get copyWith =>
      _$AllergicStateCopyWithImpl<AllergicState>(
          this as AllergicState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllergicState &&
            const DeepCollectionEquality().equals(other.allergic, allergic) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(allergic), status);

  @override
  String toString() {
    return 'AllergicState(allergic: $allergic, status: $status)';
  }
}

/// @nodoc
abstract mixin class $AllergicStateCopyWith<$Res> {
  factory $AllergicStateCopyWith(
          AllergicState value, $Res Function(AllergicState) _then) =
      _$AllergicStateCopyWithImpl;
  @useResult
  $Res call({List<AllergicModel> allergic, AllergicStatus status});
}

/// @nodoc
class _$AllergicStateCopyWithImpl<$Res>
    implements $AllergicStateCopyWith<$Res> {
  _$AllergicStateCopyWithImpl(this._self, this._then);

  final AllergicState _self;
  final $Res Function(AllergicState) _then;

  /// Create a copy of AllergicState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allergic = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      allergic: null == allergic
          ? _self.allergic
          : allergic // ignore: cast_nullable_to_non_nullable
              as List<AllergicModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AllergicStatus,
    ));
  }
}

/// @nodoc

class _AllergicState implements AllergicState {
  const _AllergicState(
      {required final List<AllergicModel> allergic, required this.status})
      : _allergic = allergic;

  final List<AllergicModel> _allergic;
  @override
  List<AllergicModel> get allergic {
    if (_allergic is EqualUnmodifiableListView) return _allergic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergic);
  }

  @override
  final AllergicStatus status;

  /// Create a copy of AllergicState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllergicStateCopyWith<_AllergicState> get copyWith =>
      __$AllergicStateCopyWithImpl<_AllergicState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllergicState &&
            const DeepCollectionEquality().equals(other._allergic, _allergic) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allergic), status);

  @override
  String toString() {
    return 'AllergicState(allergic: $allergic, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$AllergicStateCopyWith<$Res>
    implements $AllergicStateCopyWith<$Res> {
  factory _$AllergicStateCopyWith(
          _AllergicState value, $Res Function(_AllergicState) _then) =
      __$AllergicStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<AllergicModel> allergic, AllergicStatus status});
}

/// @nodoc
class __$AllergicStateCopyWithImpl<$Res>
    implements _$AllergicStateCopyWith<$Res> {
  __$AllergicStateCopyWithImpl(this._self, this._then);

  final _AllergicState _self;
  final $Res Function(_AllergicState) _then;

  /// Create a copy of AllergicState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? allergic = null,
    Object? status = null,
  }) {
    return _then(_AllergicState(
      allergic: null == allergic
          ? _self._allergic
          : allergic // ignore: cast_nullable_to_non_nullable
              as List<AllergicModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AllergicStatus,
    ));
  }
}

// dart format on
