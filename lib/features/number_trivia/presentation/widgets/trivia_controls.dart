import 'package:clean_architecture_tdd_course/features/number_trivia/presentation/store/number_trivia_event.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/presentation/store/number_trivia_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TriviaControls extends StatefulWidget {
  const TriviaControls({
    Key key,
  }) : super(key: key);

  @override
  _TriviaControlsState createState() => _TriviaControlsState();
}

class _TriviaControlsState extends State<TriviaControls> {
  NumberTriviaStore numberTriviaStore = Modular.get();
  final TextEditingController controller = TextEditingController();
  String inputStr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Input a number',
          ),
          onChanged: (value) {
            inputStr = value;
          },
          onSubmitted: (_) {
            dispatchConcrete();
          },
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: dispatchConcrete,
                child: const Text('Search'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                onPressed: dispatchRandom,
                child: const Text('Get random trivia'),
              ),
            ),
          ],
        )
      ],
    );
  }

  void dispatchConcrete() {
    controller.clear();
    numberTriviaStore
        .getErrorOrUseCase(GetTriviaForConcreteNumber(numberString: inputStr));
  }

  void dispatchRandom() {
    controller.clear();
    numberTriviaStore.getErrorOrUseCase(const GetTriviaForRandomNumber());
  }
}

/* 
Use in case of dynamic changing as in a todo list

class _TriviaControlsState extends State<TriviaControls> {
  NumberTriviaStore numberTriviaStore = Modular.get();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Form(
          autovalidate: true,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Input a number',
            ),
            onChanged: numberTriviaStore.changeNumberTriviaInput,
            validator: (_) => numberTriviaStore.trivia.number.value
                .fold((f) => "Número inválido", (r) => null),
            
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: dispatchConcreteIfValid,
                child: const Text('Search'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                onPressed: dispatchRandom,
                child: const Text('Get random trivia'),
              ),
            ),
          ],
        )
      ],
    );
  }

  void dispatchConcreteIfValid() {
    if (numberTriviaStore.trivia.isValid()) {
      controller.clear();
      numberTriviaStore.getErrorOrUseCase(GetTriviaForConcreteNumber(
          numberString:
              numberTriviaStore.trivia.number.getOrCrash().toString()));
    }
  }

  void dispatchRandom() {
    controller.clear();
    numberTriviaStore.getErrorOrUseCase(const GetTriviaForRandomNumber());
  }
}
 */
