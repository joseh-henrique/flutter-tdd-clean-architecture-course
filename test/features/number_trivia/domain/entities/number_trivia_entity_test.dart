import 'package:clean_architecture_tdd_course/core/validators/validator_failures.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('stringToUnsignedInt', () {
    test(
      'should return an integer when the string represents an unsigned integer',
      () async {
        // arrange
        const str = '123';

        // act
        final trivia = NumberTrivia(number: TriviaNumber(str), text: "dasda");
        final result = trivia.number.value.fold((l) => l, (r) => r);
        // assert
        expect(result, 123);
      },
    );

    test(
      'should return a Failure when the string is not an integer',
      () async {
        // arrange
        const str = 'abc';
        // act
        final trivia = NumberTrivia(number: TriviaNumber(str), text: "2");
        final result = trivia.number.value.fold((l) => l, (r) => r);
        // assert
        expect(result, const InvalidIntNumber(failedValue: 0));
      },
    );

    test(
      'should return a Failure when the string is a negative integer',
      () async {
        // arrange
        const str = '-123';
        // act
        final trivia = NumberTrivia(number: TriviaNumber(str), text: "2");
        final result = trivia.number.value.fold((l) => l, (r) => r);
        // assert
        expect(result, const InvalidIntNumber(failedValue: 0));
      },
    );
  });
}
