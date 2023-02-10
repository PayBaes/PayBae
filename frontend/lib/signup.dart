import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


bool _obscureText = true;

// final passwordController = TextEditingController();

class MultiController {
  final _textController3 = TextEditingController();
  final passwordController = TextEditingController();
}

class signup extends StatefulWidget {

  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  

  bool _hasInput1 = false;
  bool _hasInput2 = false;
  bool _hasInput3 = false;
  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    _textController1.addListener(_onTextChanged1);
    _textController2.addListener(_onTextChanged2);
    _textController3.addListener(_onTextChanged3);
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    _textController3.dispose();
    super.dispose();
  }

  void _onTextChanged1() {
    setState(() {
      _hasInput1 = _textController1.text.trim().isNotEmpty;
    });
  }

  void _onTextChanged2() {
    setState(() {
      _hasInput2 = _textController2.text.trim().isNotEmpty;
    });
  }

  void _onTextChanged3() {
    setState(() {
      _hasInput3 = _textController3.text.trim().isNotEmpty;
    });
  }

  final MultiController _multiController = MultiController();




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
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: _textController1,
                  textInputAction: TextInputAction.next,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
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
              child: SizedBox(
                width: 300,
                child: TextField(
                  controller: _textController2,
                  textInputAction: TextInputAction.next,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
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
                 
                  controller: _multiController._textController3,
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
                    errorText: _multiController._textController3.text.length < 8
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
              onPressed: _hasInput1 && _hasInput2 ? () {
                Navigator.pushNamed(context, '/authenticate');
              } : null,
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
            
            ),
            const SizedBox(
              height: 0.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 90.0,
                ),
                const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        ),
        ), 
    );
  }
}
