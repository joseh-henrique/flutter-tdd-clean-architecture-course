import 'package:clean_architecture_tdd_course/core/validators/validator_failures.dart';
import 'package:clean_architecture_tdd_course/core/validators/value_objects.dart';
import 'package:clean_architecture_tdd_course/core/validators/value_validators.dart';
import 'package:dartz/dartz.dart';

class TriviaNumber extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory TriviaNumber(String input) {
    assert(input != null);
    return TriviaNumber._(
      validateUnsignedIntString(input),
    );
  }

  const TriviaNumber._(this.value);
}
