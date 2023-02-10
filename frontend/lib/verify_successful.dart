import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_frontend/signup.dart';

class verify_successful extends StatelessWidget {
  const verify_successful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => const signup(),
      ));
    });
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        
        minimum: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 130.0,
                ),
                Image.asset(
                  'assets/images/verify_successful.gif',
                  height: 220.0,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                 
                const Center(
                    child: Text(
                  "Verification Successful",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )),
                const SizedBox(
                  height: 80.0,
                ),
              ],
            ),           
          ],
        ),
      ),
    );
  }
}
