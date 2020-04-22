import 'package:dartz/dartz.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<GeneralFailure, Type>> call(Params params);
}

class NoParams {}
