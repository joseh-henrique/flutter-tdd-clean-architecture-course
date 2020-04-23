import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../core/util/input_converter.dart';
import '../../domain/entities/number_trivia.dart';
import '../../domain/usecases/get_concrete_number_trivia.dart';
import '../../domain/usecases/get_random_number_trivia.dart';
import 'number_trivia_event.dart';

part 'number_trivia_store.g.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHE_FAILURE_MESSAGE = 'Cache Failure';
const String INVALID_INPUT_FAILURE_MESSAGE =
    'Invalid Input - The number must be a positive integer or zero.';

class NumberTriviaStore = _NumberTriviaStoreBase with _$NumberTriviaStore;

abstract class _NumberTriviaStoreBase with Store {
  final GetConcreteNumberTrivia getConcreteNumberTrivia;
  final GetRandomNumberTrivia getRandomNumberTrivia;
  final InputConverter inputConverter;

  _NumberTriviaStoreBase({
    @required GetConcreteNumberTrivia concrete,
    @required GetRandomNumberTrivia random,
    @required this.inputConverter,
  })  : assert(concrete != null),
        assert(random != null),
        assert(inputConverter != null),
        getConcreteNumberTrivia = concrete,
        getRandomNumberTrivia = random;

  @observable
  NumberTrivia trivia = NumberTrivia.empty();

  @observable
  String errorMessage;

  @observable
  bool loadingState;

  @computed
  bool get emptyState => loadingState == null && !errorState;

  @computed
  bool get errorState => errorMessage != null && errorMessage.isNotEmpty;

  @action
  Future<void> getErrorOrUseCase(NumberTriviaEvent event) async {
    _clearErrorMessage();
    _startLoading();

    await event.map(
      getTriviaForConcreteNumber: (e) async {
        await getConcreteNumberTriviaOrError(e);
      },
      getTriviaForRandomNumber: (e) async {
        final failureOrTrivia = await getRandomNumberTrivia(NoParams());
        _eitherLoadedOrErrorState(failureOrTrivia);
      },
    );

    _finishLoading();
  }

  @action
  void _clearErrorMessage() {
    errorMessage = '';
  }

  @action
  void _startLoading() {
    loadingState = true;
  }

  @action
  void _finishLoading() {
    loadingState = false;
  }

  @action
  void changeNumberTriviaInput(String input) {
    trivia = trivia.copyWith(number: TriviaNumber(input));
  }

  @action
  Future<void> getConcreteNumberTriviaOrError(
      GetTriviaForConcreteNumber event) async {
    final inputEither =
        inputConverter.stringToUnsignedInteger(event.numberString);

    await inputEither.fold(
      (failure) {
        errorMessage = INVALID_INPUT_FAILURE_MESSAGE;
      },
      (integer) async {
        final failureOrTrivia =
            await getConcreteNumberTrivia(Params(number: integer));
        _eitherLoadedOrErrorState(failureOrTrivia);
      },
    );
  }

  @action
  void _eitherLoadedOrErrorState(
      Either<GeneralFailure, NumberTrivia> failureOrTrivia) {
    failureOrTrivia.fold(
      (failure) => errorMessage = _mapFailureToMessage(failure),
      (triviaFetched) => trivia = triviaFetched,
    );
  }

  String _mapFailureToMessage(GeneralFailure failure) {
    return failure.map(
      serverFailure: (_) => SERVER_FAILURE_MESSAGE,
      cacheFailure: (_) => CACHE_FAILURE_MESSAGE,
    );
  }
}
