// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'input_converter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$InputFailureTearOff {
  const _$InputFailureTearOff();

  InvalidInputFailure invalidInputFailure() {
    return const InvalidInputFailure();
  }
}

// ignore: unused_element
const $InputFailure = _$InputFailureTearOff();

mixin _$InputFailure {}

abstract class $InputFailureCopyWith<$Res> {
  factory $InputFailureCopyWith(
          InputFailure value, $Res Function(InputFailure) then) =
      _$InputFailureCopyWithImpl<$Res>;
}

class _$InputFailureCopyWithImpl<$Res> implements $InputFailureCopyWith<$Res> {
  _$InputFailureCopyWithImpl(this._value, this._then);

  final InputFailure _value;
  // ignore: unused_field
  final $Res Function(InputFailure) _then;
}

abstract class $InvalidInputFailureCopyWith<$Res> {
  factory $InvalidInputFailureCopyWith(
          InvalidInputFailure value, $Res Function(InvalidInputFailure) then) =
      _$InvalidInputFailureCopyWithImpl<$Res>;
}

class _$InvalidInputFailureCopyWithImpl<$Res>
    extends _$InputFailureCopyWithImpl<$Res>
    implements $InvalidInputFailureCopyWith<$Res> {
  _$InvalidInputFailureCopyWithImpl(
      InvalidInputFailure _value, $Res Function(InvalidInputFailure) _then)
      : super(_value, (v) => _then(v as InvalidInputFailure));

  @override
  InvalidInputFailure get _value => super._value as InvalidInputFailure;
}

class _$InvalidInputFailure implements InvalidInputFailure {
  const _$InvalidInputFailure();

  @override
  String toString() {
    return 'InputFailure.invalidInputFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidInputFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class InvalidInputFailure implements InputFailure {
  const factory InvalidInputFailure() = _$InvalidInputFailure;
}
