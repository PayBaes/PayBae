import 'package:flutter/material.dart';

class signup_name extends StatelessWidget {
  const signup_name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(104, 0, 0, 0),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('assets/images/logo.png',
            height: 280.0,),
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                // labelText: 'First Name',
                hintText: 'First Name',
                hintStyle: TextStyle(
                  color: Colors.black,
                )              
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),),
                hintText: 'Last Name',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(             
              child: const Text(
                'Next',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  
                  ),

                ),
              
              onPressed: () {
                Navigator.pushNamed(context, '/signup_password');
              },
              
            ),
            
          ],
        ),
      ),
    );
  }
}
