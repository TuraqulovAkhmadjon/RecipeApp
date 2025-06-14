// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnboardingState {
  List<OnboardingModel> get onboarding;
  OnboardingStatus get status;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      _$OnboardingStateCopyWithImpl<OnboardingState>(
          this as OnboardingState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnboardingState &&
            const DeepCollectionEquality()
                .equals(other.onboarding, onboarding) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(onboarding), status);

  @override
  String toString() {
    return 'OnboardingState(onboarding: $onboarding, status: $status)';
  }
}

/// @nodoc
abstract mixin class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) _then) =
      _$OnboardingStateCopyWithImpl;
  @useResult
  $Res call({List<OnboardingModel> onboarding, OnboardingStatus status});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._self, this._then);

  final OnboardingState _self;
  final $Res Function(OnboardingState) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onboarding = null,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      onboarding: null == onboarding
          ? _self.onboarding
          : onboarding // ignore: cast_nullable_to_non_nullable
              as List<OnboardingModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OnboardingStatus,
    ));
  }
}

/// @nodoc

class _OnboardingState implements OnboardingState {
  const _OnboardingState(
      {required final List<OnboardingModel> onboarding, required this.status})
      : _onboarding = onboarding;

  final List<OnboardingModel> _onboarding;
  @override
  List<OnboardingModel> get onboarding {
    if (_onboarding is EqualUnmodifiableListView) return _onboarding;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onboarding);
  }

  @override
  final OnboardingStatus status;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnboardingStateCopyWith<_OnboardingState> get copyWith =>
      __$OnboardingStateCopyWithImpl<_OnboardingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnboardingState &&
            const DeepCollectionEquality()
                .equals(other._onboarding, _onboarding) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_onboarding), status);

  @override
  String toString() {
    return 'OnboardingState(onboarding: $onboarding, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$OnboardingStateCopyWith(
          _OnboardingState value, $Res Function(_OnboardingState) _then) =
      __$OnboardingStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<OnboardingModel> onboarding, OnboardingStatus status});
}

/// @nodoc
class __$OnboardingStateCopyWithImpl<$Res>
    implements _$OnboardingStateCopyWith<$Res> {
  __$OnboardingStateCopyWithImpl(this._self, this._then);

  final _OnboardingState _self;
  final $Res Function(_OnboardingState) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? onboarding = null,
    Object? status = null,
  }) {
    return _then(_OnboardingState(
      onboarding: null == onboarding
          ? _self._onboarding
          : onboarding // ignore: cast_nullable_to_non_nullable
              as List<OnboardingModel>,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as OnboardingStatus,
    ));
  }
}

// dart format on
