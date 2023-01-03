import 'package:flutter/material.dart';
import 'signup_name.dart';
import 'signup_password.dart';

void main() {
  runApp(const Paybae());
}

class Paybae extends StatelessWidget {
  const Paybae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      initialRoute: '/signup_name',
      routes: {
        // '/': (context) => const Home(),
        '/signup_name': (context) => const signup_name(),
        '/signup_password': (context) => const signup_password(),
      },
    );
  }
}
