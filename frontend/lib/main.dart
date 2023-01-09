import 'package:flutter/material.dart';
import 'signup.dart';
import 'authenticate.dart';
import 'verify_unsuccessful.dart';
import 'verify_successful.dart';
import 'splashscreen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) =>  splashscreen(),
        '/signup': (context) => const signup(),
        '/authenticate': (context) => const authenticate(),
        '/verify_unsuccessful': (context) => const verify_unsuccessful(),
        '/verify_successful': (context) => const verify_successful(),
      },
    );
  }
}
