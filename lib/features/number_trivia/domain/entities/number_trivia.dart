import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

/* class NumberTrivia extends Equatable {
  final String text;
  final int number;

  const NumberTrivia({
    @required this.text,
    @required this.number,
  });

  @override
  List<Object> get props => [text, number];
}
 */

part 'number_trivia.freezed.dart';

@freezed
abstract class NumberTrivia with _$NumberTrivia {
  const factory NumberTrivia({
    @required String text,
    @required int number,
  }) = _NumberTrivia;
}
