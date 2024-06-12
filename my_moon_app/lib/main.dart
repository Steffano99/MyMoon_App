import 'package:flutter/material.dart';
import 'package:my_moon_app/screens/home_screen.dart';

void main() {
  runApp(const MoonPage());
}

class MoonPage extends StatelessWidget {
  const MoonPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(scaffoldBackgroundColor: Color.fromRGBO(31, 31, 36, 1.0)),
      title: 'GoMoon',
      home: HomeScreen(),
    );
  }
}
