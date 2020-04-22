import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<GeneralFailure, NumberTrivia>> getConcreteNumberTrivia(
      int number);
  Future<Either<GeneralFailure, NumberTrivia>> getRandomNumberTrivia();
}
