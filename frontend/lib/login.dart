import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'login_controller.dart';

bool _obscureText = true;


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  GoogleSignInAccount? _currentUser;

  bool _hasInput4 = false;
  bool _hasInput5 = false;

  final _textController4 = TextEditingController();
  final _textController5 = TextEditingController();
  final controller = Get.put(loginController());

  @override
  void initState() {
    super.initState();
    _textController4.addListener(_onTextChanged4);
    _textController5.addListener(_onTextChanged5);
  }

  @override
  void dispose() {
    _textController4.dispose();
    _textController5.dispose();
    super.dispose();
  }

  void _onTextChanged4() {
    setState(() {
      _hasInput4 = _textController4.text.trim().isNotEmpty;
    });
  }

  void _onTextChanged5() {
    setState(() {
      _hasInput5 = _textController5.text.trim().isNotEmpty;
    });
  }

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
                'Sign In',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                child: SizedBox(
                    width: 300,
                    child: TextField(
                      controller: _textController4,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 16.0),
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
                        prefixStyle: TextStyle(color: Colors.black),
                        hintText: 'Email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      maxLines: 1,
                    )),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                child: SizedBox(
                    width: 300,
                    child: TextField(
                      controller: _textController5,
                      textInputAction: TextInputAction.done,
                      obscureText: _obscureText,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        errorStyle: const TextStyle(
                          color: Colors.red,
                        ),
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
                  onPressed: _hasInput4 && _hasInput5
                      ? () {
                          Navigator.pushNamed(context, '/authenticate');
                        }
                      : null,
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 140.0,
                  ),
                  const Text(
                    'New User?',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 100.0,
                  ),
                  Container(
                    child: InkWell(
                        onTap: () {
                          GoogleSignIn().signIn();
                        },
                        child: Image.asset(
                          'assets/images/google-icon.png',
                          height: 40.0,
                          width: 40.0,
                        )),
                  ),
                  const SizedBox(
                    width: 30.0,
                  ),
                  Container(
                    child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/fb.png',
                          height: 40.0,
                          width: 40.0,
                        )),
                  ),
                  const SizedBox( 
                    width: 30.0,
                  ),
                  Container(
                    child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/twitter.png',
                          height: 40.0,
                          width: 40.0,
                        )),
                  ),
                  
                ],
              )
            ],
          ),
        )));
  }
}

