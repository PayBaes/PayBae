import 'package:flutter/material.dart';
import 'package:flutter/services.dart';









class authenticate extends StatelessWidget {
  const authenticate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 55.0),
        child: Column(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
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
                SizedBox(
                    width: 50,
                    child: TextField(
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
                              Radius.circular(20.0),
                            ),
                          ),
                        ))),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                    width: 50,
                    child: TextField(
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
                              Radius.circular(20.0),
                            ),
                          ),
                        ))),
                const SizedBox(
                  width: 30,
                ),
                const SizedBox(
                    width: 50,
                    child: TextField(
                        
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
                              Radius.circular(20.0),
                            ),
                          ),
                        ))),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                    width: 50,
                    child: TextField(
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
                              Radius.circular(20.0),
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
                ElevatedButton(
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
                    // Navigator.pushNamed(context, '');
                  },
                ),
                const SizedBox(
              height: 80.0,
            ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/verify_unsuccessful');
                  },
                  child: const Icon(Icons.warning),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
