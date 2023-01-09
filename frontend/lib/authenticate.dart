import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class authenticate extends StatelessWidget {
  const authenticate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        //  minimum: const EdgeInsets.symmetric(horizontal: 60.0),
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
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
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
                      keyboardType: TextInputType.number,
                       textInputAction: TextInputAction.next,
                        autofocus: true,
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
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
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
                const SizedBox(
                    width: 50,
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
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
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                        inputFormatters: [
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
                    child: const Text(
                      'Verify',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/verify_successful');
                    },
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
