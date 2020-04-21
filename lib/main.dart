import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_module.dart';
import 'features/number_trivia/presentation/pages/number_trivia_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await di.init();
  // runApp(MyApp());
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  runApp(ModularApp(module: AppModule(sharedPreferences: sharedPreferences)));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        accentColor: Colors.green.shade600,
      ),
      home: NumberTriviaPage(),
    );
  }
}
