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
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(38, 143, 103, 0.643),
      ),
      title: 'GoMoon',
      home: HomeScreen(),
    );
  }
}
