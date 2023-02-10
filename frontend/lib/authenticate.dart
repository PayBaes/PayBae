import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class authenticate extends StatefulWidget {
  const authenticate({Key? key}) : super(key: key);

  @override
  State<authenticate> createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();


  bool _hasInput1 = false;
  bool _hasInput2 = false;
  bool _hasInput3 = false;
  bool _hasInput4 = false;

  final _textController1 = TextEditingController();
  final _textController2 = TextEditingController();
  final _textController3 = TextEditingController();
  final _textController4 = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController1.addListener(_onTextChanged1);
    _textController2.addListener(_onTextChanged2);
    _textController3.addListener(_onTextChanged3);
    _textController4.addListener(_onTextChanged4);
  }

  @override
  void dispose() {
    _textController1.dispose();
    _textController2.dispose();
    _textController3.dispose();
    _textController4.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
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

  void _onTextChanged4() {
    setState(() {
      _hasInput4 = _textController4.text.trim().isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg5.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/nobg_logo.png',
                    height: 200.0,
                  ),
                  const Text(
                    'One Time Password',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 80.0,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 70.0,
                  ),
                  SizedBox(
                      width: 50,
                      child: TextField(
                          controller: _textController1,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          focusNode: _focusNode1,
                          autofocus: true,
                          maxLength: 1,
                          onChanged: (text) {
                            if (text.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            
                          ],
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
                                Radius.circular(10.0),
                              ),
                            ),
                          ))),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 50,
                      child: TextField(
                          controller: _textController2,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          focusNode: _focusNode2,
                          maxLength: 1,
                          onChanged: (text) {
                            if (text.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(1),
                          ],
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
                                Radius.circular(10.0),
                              ),
                            ),
                          ))),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 50,
                      child: TextField(
                          controller: _textController3,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          focusNode: _focusNode3,
                          maxLength: 1,
                          onChanged: (text) {
                            if (text.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(1),
                          ],
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
                                Radius.circular(10.0),
                              ),
                            ),
                          ))),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 50,
                      child: TextField(
                          controller: _textController4,
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(1),
                          ],
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
                                Radius.circular(10.0),
                              ),
                            ),
                          ))),
                ],
              ),
              const SizedBox(
                height: 80.0,
              ),
              Column(
                children: [
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    width: 250,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        primary: const Color.fromARGB(225, 95, 89, 225),
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed:
                          _hasInput1 && _hasInput2 && _hasInput3 && _hasInput4
                              ? () {
                                  if (_textController1.text == "0" &&
                                      _textController2.text == "0" &&
                                      _textController3.text == "0" &&
                                      _textController4.text == "0") {
                                    Navigator.pushNamed(
                                        context, '/verify_successful');
                                  } else {
                                    Navigator.pushNamed(
                                        context, '/verify_unsuccessful');
                                  }
                                }
                              : null,
                      child: const Text(
                        'Verify',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
