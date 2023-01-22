import 'package:flutter/material.dart';

class signup_password extends StatelessWidget {
  const signup_password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(children: [
          Image.asset(
            'assets/images/logo.png',
            height: 220.0,
          ),const Text(
              'Complete Your Sign Up',
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
                hintText: 'Enter Email',
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
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                // labelText: 'First Name',
                hintText: 'Enter Password',
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
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                // labelText: 'First Name',
                hintText: 'Re-enter Password',
                hintStyle: TextStyle(
                  color: Colors.black,
                )              
              ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Sign Up'),
          )
        ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
