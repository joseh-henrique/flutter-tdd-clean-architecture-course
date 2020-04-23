import 'package:clean_architecture_tdd_course/features/number_trivia/domain/entities/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/number_trivia.dart';

part 'number_trivia_dto.freezed.dart';
part 'number_trivia_dto.g.dart';

@freezed
abstract class NumberTriviaDTO with _$NumberTriviaDTO {
  const factory NumberTriviaDTO({
    @required String text,
    @required int number,
  }) = _NumberTriviaDTO;

  factory NumberTriviaDTO.fromJsonParsingInt(Map<String, dynamic> json) {
    return NumberTriviaDTO(
      text: json['text'] as String,
      number: (json['number'] as num).toInt(),
    );
  }

  factory NumberTriviaDTO.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaDTOFromJson(json);

  factory NumberTriviaDTO.fromDomain(NumberTrivia numberTrivia) {
    return NumberTriviaDTO(
      text: numberTrivia.text,
      number: numberTrivia.number.getOrCrash(),
    );
  }
}

extension NumberTriviaDTOX on NumberTriviaDTO {
  NumberTrivia toDomain() {
    return NumberTrivia(
      text: text,
      number: TriviaNumber(number.toString()),
    );
  }
}
