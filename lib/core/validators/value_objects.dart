import 'package:clean_architecture_tdd_course/core/interfaces/common_interfaces.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'errors.dart';
import 'validator_failures.dart';
import 'value_validators.dart';

//Aqui ficarão os ValuObjects gerais, os específicos devem ser criados em cada módulo
//de acordo com sua feature. Sempre extendendo ValueObject

@immutable
abstract class ValueObject<T> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  /// The error will be thrown in a case that can be prevented
  /// (Ex: not showing an buttom or disabling it because of the validation).
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  /// User when a default value is used when the value is empty.
  /// Example: value.getOrElse( () => DEFAULT_VALUE)
  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  /// Return failure or do nothing. Unit represents void.
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    assert(input != null);
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);
}
