// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'number_trivia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NumberTriviaDTO _$NumberTriviaDTOFromJson(Map<String, dynamic> json) {
  return _NumberTriviaDTO.fromJson(json);
}

class _$NumberTriviaDTOTearOff {
  const _$NumberTriviaDTOTearOff();

  _NumberTriviaDTO call({@required String text, @required int number}) {
    return _NumberTriviaDTO(
      text: text,
      number: number,
    );
  }
}

// ignore: unused_element
const $NumberTriviaDTO = _$NumberTriviaDTOTearOff();

mixin _$NumberTriviaDTO {
  String get text;
  int get number;

  Map<String, dynamic> toJson();
  $NumberTriviaDTOCopyWith<NumberTriviaDTO> get copyWith;
}

abstract class $NumberTriviaDTOCopyWith<$Res> {
  factory $NumberTriviaDTOCopyWith(
          NumberTriviaDTO value, $Res Function(NumberTriviaDTO) then) =
      _$NumberTriviaDTOCopyWithImpl<$Res>;
  $Res call({String text, int number});
}

class _$NumberTriviaDTOCopyWithImpl<$Res>
    implements $NumberTriviaDTOCopyWith<$Res> {
  _$NumberTriviaDTOCopyWithImpl(this._value, this._then);

  final NumberTriviaDTO _value;
  // ignore: unused_field
  final $Res Function(NumberTriviaDTO) _then;

  @override
  $Res call({
    Object text = freezed,
    Object number = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
      number: number == freezed ? _value.number : number as int,
    ));
  }
}

abstract class _$NumberTriviaDTOCopyWith<$Res>
    implements $NumberTriviaDTOCopyWith<$Res> {
  factory _$NumberTriviaDTOCopyWith(
          _NumberTriviaDTO value, $Res Function(_NumberTriviaDTO) then) =
      __$NumberTriviaDTOCopyWithImpl<$Res>;
  @override
  $Res call({String text, int number});
}

class __$NumberTriviaDTOCopyWithImpl<$Res>
    extends _$NumberTriviaDTOCopyWithImpl<$Res>
    implements _$NumberTriviaDTOCopyWith<$Res> {
  __$NumberTriviaDTOCopyWithImpl(
      _NumberTriviaDTO _value, $Res Function(_NumberTriviaDTO) _then)
      : super(_value, (v) => _then(v as _NumberTriviaDTO));

  @override
  _NumberTriviaDTO get _value => super._value as _NumberTriviaDTO;

  @override
  $Res call({
    Object text = freezed,
    Object number = freezed,
  }) {
    return _then(_NumberTriviaDTO(
      text: text == freezed ? _value.text : text as String,
      number: number == freezed ? _value.number : number as int,
    ));
  }
}

@JsonSerializable()
class _$_NumberTriviaDTO implements _NumberTriviaDTO {
  const _$_NumberTriviaDTO({@required this.text, @required this.number})
      : assert(text != null),
        assert(number != null);

  factory _$_NumberTriviaDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_NumberTriviaDTOFromJson(json);

  @override
  final String text;
  @override
  final int number;

  @override
  String toString() {
    return 'NumberTriviaDTO(text: $text, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NumberTriviaDTO &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(number);

  @override
  _$NumberTriviaDTOCopyWith<_NumberTriviaDTO> get copyWith =>
      __$NumberTriviaDTOCopyWithImpl<_NumberTriviaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NumberTriviaDTOToJson(this);
  }
}

abstract class _NumberTriviaDTO implements NumberTriviaDTO {
  const factory _NumberTriviaDTO(
      {@required String text, @required int number}) = _$_NumberTriviaDTO;

  factory _NumberTriviaDTO.fromJson(Map<String, dynamic> json) =
      _$_NumberTriviaDTO.fromJson;

  @override
  String get text;
  @override
  int get number;
  @override
  _$NumberTriviaDTOCopyWith<_NumberTriviaDTO> get copyWith;
}
