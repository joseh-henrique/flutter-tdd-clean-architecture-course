import 'package:clean_architecture_tdd_course/features/number_trivia/presentation/store/number_trivia_store.dart';
import 'package:clean_architecture_tdd_course/features/number_trivia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NumberTriviaPage extends StatefulWidget {
  @override
  _NumberTriviaPageState createState() => _NumberTriviaPageState();
}

class _NumberTriviaPageState extends State<NumberTriviaPage> {
  NumberTriviaStore numberTriviaStore = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                // Top half
                Observer(
                  builder: (_) {
                    if (numberTriviaStore.emptyState) {
                      return const MessageDisplay(
                        message: 'Start searching!',
                      );
                    } else if (numberTriviaStore.loadingState) {
                      return const LoadingWidget();
                    } else if (numberTriviaStore.errorState is Error) {
                      return MessageDisplay(
                        message: numberTriviaStore.errorMessage,
                      );
                    } else {
                      return TriviaDisplay(
                          numberTrivia: numberTriviaStore.trivia);
                    }
                  },
                ),

                const SizedBox(height: 20),
                // Bottom half
                const TriviaControls()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
