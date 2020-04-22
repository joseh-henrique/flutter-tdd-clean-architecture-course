import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_converter.freezed.dart';

class InputConverter {
  Either<InputFailure, int> stringToUnsignedInteger(String str) {
    try {
      final integer = int.parse(str);
      if (integer < 0) throw const FormatException();
      return Right(integer);
    } on FormatException {
      return Left(const InvalidInputFailure());
    }
  }
}

@freezed
abstract class InputFailure with _$InputFailure {
  const factory InputFailure.invalidInputFailure() = InvalidInputFailure;
}
