import 'package:example_app/pages/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const Authentication());
}

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset('assets/images/auth.svg'),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 81, left: 35, right: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Silahkan Masuk',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 42,
                        ),
                        const Text(
                          'NIM',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 9, bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Masukkan NIM/NIS anda..',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(201, 206, 214, 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                ),
                              ),
                              // taruh icon di dalam textfield
                            ),
                          ),
                        ),
                        const Text(
                          'Kata Sandi',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 9, bottom: 35),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'PIN/Kata Sandi',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(201, 206, 214, 1),
                              ),
                              suffixIcon: Icon(Icons.visibility),
                              suffixIconColor: Color.fromRGBO(201, 206, 214, 1),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 55),
                            backgroundColor: const Color.fromRGBO(3, 5, 88, 1),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Dashboard(),
                              ),
                            );
                          },
                          child: const Text(
                            'Masuk',
                            style: TextStyle(fontFamily: 'Lato', fontSize: 14),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
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
