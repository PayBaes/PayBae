import 'package:flutter/material.dart';

class homepae extends StatefulWidget {
  const homepae({Key? key}) : super(key: key);

  @override
  State<homepae> createState() => _homepaeState();
}

class _homepaeState extends State<homepae> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
