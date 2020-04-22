// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'number_trivia_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NumberTriviaEventTearOff {
  const _$NumberTriviaEventTearOff();

  GetTriviaForConcreteNumber getTriviaForConcreteNumber({String numberString}) {
    return GetTriviaForConcreteNumber(
      numberString: numberString,
    );
  }

  GetTriviaForRandomNumber getTriviaForRandomNumber() {
    return const GetTriviaForRandomNumber();
  }
}

// ignore: unused_element
const $NumberTriviaEvent = _$NumberTriviaEventTearOff();

mixin _$NumberTriviaEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTriviaForConcreteNumber(String numberString),
    @required Result getTriviaForRandomNumber(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTriviaForConcreteNumber(String numberString),
    Result getTriviaForRandomNumber(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getTriviaForConcreteNumber(GetTriviaForConcreteNumber value),
    @required Result getTriviaForRandomNumber(GetTriviaForRandomNumber value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTriviaForConcreteNumber(GetTriviaForConcreteNumber value),
    Result getTriviaForRandomNumber(GetTriviaForRandomNumber value),
    @required Result orElse(),
  });
}

abstract class $NumberTriviaEventCopyWith<$Res> {
  factory $NumberTriviaEventCopyWith(
          NumberTriviaEvent value, $Res Function(NumberTriviaEvent) then) =
      _$NumberTriviaEventCopyWithImpl<$Res>;
}

class _$NumberTriviaEventCopyWithImpl<$Res>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._value, this._then);

  final NumberTriviaEvent _value;
  // ignore: unused_field
  final $Res Function(NumberTriviaEvent) _then;
}

abstract class $GetTriviaForConcreteNumberCopyWith<$Res> {
  factory $GetTriviaForConcreteNumberCopyWith(GetTriviaForConcreteNumber value,
          $Res Function(GetTriviaForConcreteNumber) then) =
      _$GetTriviaForConcreteNumberCopyWithImpl<$Res>;
  $Res call({String numberString});
}

class _$GetTriviaForConcreteNumberCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res>
    implements $GetTriviaForConcreteNumberCopyWith<$Res> {
  _$GetTriviaForConcreteNumberCopyWithImpl(GetTriviaForConcreteNumber _value,
      $Res Function(GetTriviaForConcreteNumber) _then)
      : super(_value, (v) => _then(v as GetTriviaForConcreteNumber));

  @override
  GetTriviaForConcreteNumber get _value =>
      super._value as GetTriviaForConcreteNumber;

  @override
  $Res call({
    Object numberString = freezed,
  }) {
    return _then(GetTriviaForConcreteNumber(
      numberString: numberString == freezed
          ? _value.numberString
          : numberString as String,
    ));
  }
}

class _$GetTriviaForConcreteNumber implements GetTriviaForConcreteNumber {
  const _$GetTriviaForConcreteNumber({this.numberString});

  @override
  final String numberString;

  @override
  String toString() {
    return 'NumberTriviaEvent.getTriviaForConcreteNumber(numberString: $numberString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTriviaForConcreteNumber &&
            (identical(other.numberString, numberString) ||
                const DeepCollectionEquality()
                    .equals(other.numberString, numberString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(numberString);

  @override
  $GetTriviaForConcreteNumberCopyWith<GetTriviaForConcreteNumber>
      get copyWith =>
          _$GetTriviaForConcreteNumberCopyWithImpl<GetTriviaForConcreteNumber>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTriviaForConcreteNumber(String numberString),
    @required Result getTriviaForRandomNumber(),
  }) {
    assert(getTriviaForConcreteNumber != null);
    assert(getTriviaForRandomNumber != null);
    return getTriviaForConcreteNumber(numberString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTriviaForConcreteNumber(String numberString),
    Result getTriviaForRandomNumber(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTriviaForConcreteNumber != null) {
      return getTriviaForConcreteNumber(numberString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getTriviaForConcreteNumber(GetTriviaForConcreteNumber value),
    @required Result getTriviaForRandomNumber(GetTriviaForRandomNumber value),
  }) {
    assert(getTriviaForConcreteNumber != null);
    assert(getTriviaForRandomNumber != null);
    return getTriviaForConcreteNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTriviaForConcreteNumber(GetTriviaForConcreteNumber value),
    Result getTriviaForRandomNumber(GetTriviaForRandomNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTriviaForConcreteNumber != null) {
      return getTriviaForConcreteNumber(this);
    }
    return orElse();
  }
}

abstract class GetTriviaForConcreteNumber implements NumberTriviaEvent {
  const factory GetTriviaForConcreteNumber({String numberString}) =
      _$GetTriviaForConcreteNumber;

  String get numberString;
  $GetTriviaForConcreteNumberCopyWith<GetTriviaForConcreteNumber> get copyWith;
}

abstract class $GetTriviaForRandomNumberCopyWith<$Res> {
  factory $GetTriviaForRandomNumberCopyWith(GetTriviaForRandomNumber value,
          $Res Function(GetTriviaForRandomNumber) then) =
      _$GetTriviaForRandomNumberCopyWithImpl<$Res>;
}

class _$GetTriviaForRandomNumberCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res>
    implements $GetTriviaForRandomNumberCopyWith<$Res> {
  _$GetTriviaForRandomNumberCopyWithImpl(GetTriviaForRandomNumber _value,
      $Res Function(GetTriviaForRandomNumber) _then)
      : super(_value, (v) => _then(v as GetTriviaForRandomNumber));

  @override
  GetTriviaForRandomNumber get _value =>
      super._value as GetTriviaForRandomNumber;
}

class _$GetTriviaForRandomNumber implements GetTriviaForRandomNumber {
  const _$GetTriviaForRandomNumber();

  @override
  String toString() {
    return 'NumberTriviaEvent.getTriviaForRandomNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetTriviaForRandomNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTriviaForConcreteNumber(String numberString),
    @required Result getTriviaForRandomNumber(),
  }) {
    assert(getTriviaForConcreteNumber != null);
    assert(getTriviaForRandomNumber != null);
    return getTriviaForRandomNumber();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTriviaForConcreteNumber(String numberString),
    Result getTriviaForRandomNumber(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTriviaForRandomNumber != null) {
      return getTriviaForRandomNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result getTriviaForConcreteNumber(GetTriviaForConcreteNumber value),
    @required Result getTriviaForRandomNumber(GetTriviaForRandomNumber value),
  }) {
    assert(getTriviaForConcreteNumber != null);
    assert(getTriviaForRandomNumber != null);
    return getTriviaForRandomNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTriviaForConcreteNumber(GetTriviaForConcreteNumber value),
    Result getTriviaForRandomNumber(GetTriviaForRandomNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTriviaForRandomNumber != null) {
      return getTriviaForRandomNumber(this);
    }
    return orElse();
  }
}

abstract class GetTriviaForRandomNumber implements NumberTriviaEvent {
  const factory GetTriviaForRandomNumber() = _$GetTriviaForRandomNumber;
}
