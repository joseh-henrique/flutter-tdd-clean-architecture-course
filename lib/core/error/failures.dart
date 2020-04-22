import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class GeneralFailure with _$GeneralFailure {
  const factory GeneralFailure.serverFailure() = ServerFailure;
  const factory GeneralFailure.cacheFailure() = CacheFailure;
}
