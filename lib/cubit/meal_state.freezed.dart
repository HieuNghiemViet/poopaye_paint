// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MealState {
  ViewState get viewStatus => throw _privateConstructorUsedError;
  List<Meals> get meals => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealStateCopyWith<MealState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealStateCopyWith<$Res> {
  factory $MealStateCopyWith(MealState value, $Res Function(MealState) then) =
      _$MealStateCopyWithImpl<$Res, MealState>;
  @useResult
  $Res call({ViewState viewStatus, List<Meals> meals, Object? error});
}

/// @nodoc
class _$MealStateCopyWithImpl<$Res, $Val extends MealState>
    implements $MealStateCopyWith<$Res> {
  _$MealStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewStatus = null,
    Object? meals = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      viewStatus: null == viewStatus
          ? _value.viewStatus
          : viewStatus // ignore: cast_nullable_to_non_nullable
              as ViewState,
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meals>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealStateImplCopyWith<$Res>
    implements $MealStateCopyWith<$Res> {
  factory _$$MealStateImplCopyWith(
          _$MealStateImpl value, $Res Function(_$MealStateImpl) then) =
      __$$MealStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ViewState viewStatus, List<Meals> meals, Object? error});
}

/// @nodoc
class __$$MealStateImplCopyWithImpl<$Res>
    extends _$MealStateCopyWithImpl<$Res, _$MealStateImpl>
    implements _$$MealStateImplCopyWith<$Res> {
  __$$MealStateImplCopyWithImpl(
      _$MealStateImpl _value, $Res Function(_$MealStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewStatus = null,
    Object? meals = null,
    Object? error = freezed,
  }) {
    return _then(_$MealStateImpl(
      viewStatus: null == viewStatus
          ? _value.viewStatus
          : viewStatus // ignore: cast_nullable_to_non_nullable
              as ViewState,
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meals>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$MealStateImpl implements _MealState {
  const _$MealStateImpl(
      {required this.viewStatus, required final List<Meals> meals, this.error})
      : _meals = meals;

  @override
  final ViewState viewStatus;
  final List<Meals> _meals;
  @override
  List<Meals> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'MealState(viewStatus: $viewStatus, meals: $meals, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealStateImpl &&
            (identical(other.viewStatus, viewStatus) ||
                other.viewStatus == viewStatus) &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      viewStatus,
      const DeepCollectionEquality().hash(_meals),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealStateImplCopyWith<_$MealStateImpl> get copyWith =>
      __$$MealStateImplCopyWithImpl<_$MealStateImpl>(this, _$identity);
}

abstract class _MealState implements MealState {
  const factory _MealState(
      {required final ViewState viewStatus,
      required final List<Meals> meals,
      final Object? error}) = _$MealStateImpl;

  @override
  ViewState get viewStatus;
  @override
  List<Meals> get meals;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$MealStateImplCopyWith<_$MealStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
