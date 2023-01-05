import 'package:flutter/material.dart';

class signup_name extends StatelessWidget {
  const signup_name({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 200.0,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            
            const SizedBox(
                width: 380,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.black,
                    prefixStyle: TextStyle(color: Colors.black),
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  maxLines: 1,
                )),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
                width: 380,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.mail),
                    prefixIconColor: Colors.black,
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  maxLines: 1,
                )),
            const SizedBox(
              height: 20.0,
            ),
            const SizedBox(
                width: 380,
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.black,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  maxLines: 1,
                )),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                primary:  const Color.fromARGB(225, 95, 89, 225),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/authenticate');
              },
            ),
          ],
        ),
      ),
    );
  }
}
