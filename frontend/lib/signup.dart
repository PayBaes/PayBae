import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool _obscureText = true;

final passwordController = TextEditingController();

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(135, 0, 0, 0),
      body: SafeArea(
          
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg5.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            
          children: [
            Image.asset(
              'assets/images/nobg_logo.png',
              height: 200.0,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              child: const SizedBox(
                width: 300,
                child: TextField(
                  textInputAction: TextInputAction.next,
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
                )),),
            
            const SizedBox(
              height: 20.0,
            ),
            Container(
              child: const SizedBox(
                width: 300,
                child: TextField(
                  textInputAction: TextInputAction.next,
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
                )),),

            
            const SizedBox(
              height: 20.0,
            ),
            Container(
              child: SizedBox(
                width: 300,
                child: TextField(
                  textInputAction: TextInputAction.done,
                 
                  controller: passwordController,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(8),
                    
                  ],
                  obscureText: _obscureText,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    errorText: passwordController.text.length < 8
                        ? 'Password must be at least 8 characters'
                        : null,
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 16.0),
                    isDense: true,
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    prefixIcon: const Icon(Icons.password),
                    prefixIconColor: Colors.black,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  maxLines: 1,
                )),

            ),
            
            const SizedBox(
              height: 30.0,
            ),
            Container(
              width: 250.0,
              height: 45.0,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                primary: const Color.fromARGB(225, 95, 89, 225),
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
            ),
          ],
        ),
      

        ),
        
          

        ),
       
        
    );
  }
}
