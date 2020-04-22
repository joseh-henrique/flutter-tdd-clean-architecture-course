import 'package:clean_architecture_tdd_course/core/util/input_converter.dart';
import 'package:clean_architecture_tdd_course/core/usecases/usecase.dart';
import 'package:clean_architecture_tdd_course/core/error/failures.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/presentation/store/number_trivia_event.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/presentation/store/number_trivia_store.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetConcreteNumberTrivia extends Mock
    implements GetConcreteNumberTrivia {}

class MockGetRandomNumberTrivia extends Mock implements GetRandomNumberTrivia {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  NumberTriviaStore store;
  MockGetConcreteNumberTrivia mockGetConcreteNumberTrivia;
  MockGetRandomNumberTrivia mockGetRandomNumberTrivia;
  MockInputConverter mockInputConverter;

  setUp(() {
    mockGetConcreteNumberTrivia = MockGetConcreteNumberTrivia();
    mockGetRandomNumberTrivia = MockGetRandomNumberTrivia();
    mockInputConverter = MockInputConverter();

    store = NumberTriviaStore(
      concrete: mockGetConcreteNumberTrivia,
      random: mockGetRandomNumberTrivia,
      inputConverter: mockInputConverter,
    );
  });

  test('initialState should be Empty', () {
    // assert
    expect(store.emptyState, equals(true));
  });

  group('GetTriviaForConcreteNumber', () {
    const tNumberString = '1';
    const tNumberParsed = 1;
    const tNumberTrivia = NumberTrivia(number: 1, text: 'test trivia');

    void setUpMockInputConverterSuccess() =>
        when(mockInputConverter.stringToUnsignedInteger(any))
            .thenReturn(Right(tNumberParsed));

    test(
      'should call the InputConverter to validate and convert the string to an unsigned integer',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));

        // act
        await store.getErrorOrUseCase(
            const GetTriviaForConcreteNumber(numberString: tNumberString));

        // assert
        verify(mockInputConverter.stringToUnsignedInteger(tNumberString));
      },
    );

    test(
      'should emit error message when the input is invalid',
      () async {
        // arrange
        when(mockInputConverter.stringToUnsignedInteger(any))
            .thenReturn(Left(const InvalidInputFailure()));

        //act
        await store.getErrorOrUseCase(
            const GetTriviaForConcreteNumber(numberString: tNumberString));

        // assert
        expect(store.errorMessage, INVALID_INPUT_FAILURE_MESSAGE);
      },
    );

    test(
      'should get data from the concrete use case',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));
        // act
        await store.getErrorOrUseCase(
            const GetTriviaForConcreteNumber(numberString: tNumberString));
        await untilCalled(mockGetConcreteNumberTrivia(any));
        // assert
        verify(
            mockGetConcreteNumberTrivia(const Params(number: tNumberParsed)));
      },
    );

    test(
      'should emit correct trivia when data is gotten successfully',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));

        await store.getErrorOrUseCase(
            const GetTriviaForConcreteNumber(numberString: tNumberString));

        expect(store.trivia, tNumberTrivia);
      },
    );

    test(
      'should emit error when getting data fails',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Left(const ServerFailure()));

        // act
        await store.getErrorOrUseCase(
            const GetTriviaForConcreteNumber(numberString: tNumberString));
        expect(store.errorMessage, SERVER_FAILURE_MESSAGE);
      },
    );

    test(
      'should emit error with a proper message for the error when getting data fails',
      () async {
        // arrange
        setUpMockInputConverterSuccess();
        when(mockGetConcreteNumberTrivia(any))
            .thenAnswer((_) async => Left(const CacheFailure()));

        // act
        await store.getErrorOrUseCase(
            const GetTriviaForConcreteNumber(numberString: tNumberString));
        expect(store.errorMessage, CACHE_FAILURE_MESSAGE);
      },
    );
  });

  group('GetTriviaForRandomNumber', () {
    const tNumberTrivia = NumberTrivia(number: 1, text: 'test trivia');

    test(
      'should get data from the random use case',
      () async {
        // arrange
        when(mockGetRandomNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));
        // act
        await store.getErrorOrUseCase(const GetTriviaForRandomNumber());

        await untilCalled(mockGetRandomNumberTrivia(any));
        // assert
        verify(mockGetRandomNumberTrivia(any));
      },
    );

    test(
      'should emit correct NumberTrivia when data is gotten successfully',
      () async {
        // arrange
        when(mockGetRandomNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTrivia));

        await store.getErrorOrUseCase(const GetTriviaForRandomNumber());
        expect(store.trivia, tNumberTrivia);
      },
    );

    test(
      'should emit correct error when getting data fails',
      () async {
        // arrange
        when(mockGetRandomNumberTrivia(any))
            .thenAnswer((_) async => Left(const ServerFailure()));

        await store.getErrorOrUseCase(const GetTriviaForRandomNumber());
        expect(store.errorMessage, SERVER_FAILURE_MESSAGE);
      },
    );

    test(
      'should emit correct error with a proper message for the error when getting data fails',
      () async {
        // arrange
        when(mockGetRandomNumberTrivia(any))
            .thenAnswer((_) async => Left(const CacheFailure()));
        // assert later

        await store.getErrorOrUseCase(const GetTriviaForRandomNumber());
        expect(store.errorMessage, CACHE_FAILURE_MESSAGE);
      },
    );
  });
}
