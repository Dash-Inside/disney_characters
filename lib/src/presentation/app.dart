import 'package:disney_characters/src/presentation/pages/list_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListPage(),
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(0, 159, 102, 1),
          secondary: Color.fromRGBO(0, 0, 0, 1),
        ),
      ),
    );
  }
}
