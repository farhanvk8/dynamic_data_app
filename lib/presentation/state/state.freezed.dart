// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateInitial value) initial,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateSuccess value) success,
    required TResult Function(DataStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial value)? initial,
    TResult? Function(DataStateLoading value)? loading,
    TResult? Function(DataStateSuccess value)? success,
    TResult? Function(DataStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial value)? initial,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateSuccess value)? success,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res, DataState>;
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res, $Val extends DataState>
    implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataStateInitialCopyWith<$Res> {
  factory _$$DataStateInitialCopyWith(
          _$DataStateInitial value, $Res Function(_$DataStateInitial) then) =
      __$$DataStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataStateInitialCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$DataStateInitial>
    implements _$$DataStateInitialCopyWith<$Res> {
  __$$DataStateInitialCopyWithImpl(
      _$DataStateInitial _value, $Res Function(_$DataStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataStateInitial implements DataStateInitial {
  const _$DataStateInitial();

  @override
  String toString() {
    return 'DataState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> data) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> data)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateInitial value) initial,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateSuccess value) success,
    required TResult Function(DataStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial value)? initial,
    TResult? Function(DataStateLoading value)? loading,
    TResult? Function(DataStateSuccess value)? success,
    TResult? Function(DataStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial value)? initial,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateSuccess value)? success,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DataStateInitial implements DataState {
  const factory DataStateInitial() = _$DataStateInitial;
}

/// @nodoc
abstract class _$$DataStateLoadingCopyWith<$Res> {
  factory _$$DataStateLoadingCopyWith(
          _$DataStateLoading value, $Res Function(_$DataStateLoading) then) =
      __$$DataStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataStateLoadingCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$DataStateLoading>
    implements _$$DataStateLoadingCopyWith<$Res> {
  __$$DataStateLoadingCopyWithImpl(
      _$DataStateLoading _value, $Res Function(_$DataStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataStateLoading implements DataStateLoading {
  const _$DataStateLoading();

  @override
  String toString() {
    return 'DataState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> data) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> data)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateInitial value) initial,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateSuccess value) success,
    required TResult Function(DataStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial value)? initial,
    TResult? Function(DataStateLoading value)? loading,
    TResult? Function(DataStateSuccess value)? success,
    TResult? Function(DataStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial value)? initial,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateSuccess value)? success,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DataStateLoading implements DataState {
  const factory DataStateLoading() = _$DataStateLoading;
}

/// @nodoc
abstract class _$$DataStateSuccessCopyWith<$Res> {
  factory _$$DataStateSuccessCopyWith(
          _$DataStateSuccess value, $Res Function(_$DataStateSuccess) then) =
      __$$DataStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<dynamic> data});
}

/// @nodoc
class __$$DataStateSuccessCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$DataStateSuccess>
    implements _$$DataStateSuccessCopyWith<$Res> {
  __$$DataStateSuccessCopyWithImpl(
      _$DataStateSuccess _value, $Res Function(_$DataStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DataStateSuccess(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$DataStateSuccess implements DataStateSuccess {
  const _$DataStateSuccess(final List<dynamic> data) : _data = data;

  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateSuccessCopyWith<_$DataStateSuccess> get copyWith =>
      __$$DataStateSuccessCopyWithImpl<_$DataStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateInitial value) initial,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateSuccess value) success,
    required TResult Function(DataStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial value)? initial,
    TResult? Function(DataStateLoading value)? loading,
    TResult? Function(DataStateSuccess value)? success,
    TResult? Function(DataStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial value)? initial,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateSuccess value)? success,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DataStateSuccess implements DataState {
  const factory DataStateSuccess(final List<dynamic> data) = _$DataStateSuccess;

  List<dynamic> get data;
  @JsonKey(ignore: true)
  _$$DataStateSuccessCopyWith<_$DataStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataStateErrorCopyWith<$Res> {
  factory _$$DataStateErrorCopyWith(
          _$DataStateError value, $Res Function(_$DataStateError) then) =
      __$$DataStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DataStateErrorCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$DataStateError>
    implements _$$DataStateErrorCopyWith<$Res> {
  __$$DataStateErrorCopyWithImpl(
      _$DataStateError _value, $Res Function(_$DataStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DataStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataStateError implements DataStateError {
  const _$DataStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'DataState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateErrorCopyWith<_$DataStateError> get copyWith =>
      __$$DataStateErrorCopyWithImpl<_$DataStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<dynamic> data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataStateInitial value) initial,
    required TResult Function(DataStateLoading value) loading,
    required TResult Function(DataStateSuccess value) success,
    required TResult Function(DataStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataStateInitial value)? initial,
    TResult? Function(DataStateLoading value)? loading,
    TResult? Function(DataStateSuccess value)? success,
    TResult? Function(DataStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataStateInitial value)? initial,
    TResult Function(DataStateLoading value)? loading,
    TResult Function(DataStateSuccess value)? success,
    TResult Function(DataStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DataStateError implements DataState {
  const factory DataStateError(final String error) = _$DataStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$DataStateErrorCopyWith<_$DataStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
