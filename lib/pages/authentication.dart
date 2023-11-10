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
    const textStyle = TextStyle(
      fontSize: 25,
      fontFamily: 'Lato',
      fontWeight: FontWeight.bold,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 81),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  'assets/images/auth.svg',
                  height: 350,
                  width: 250,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 35, bottom: 42),
            child: const Text(
              'Silahkan Masuk',
              style: textStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('NIM', style: TextStyle(fontSize: 14)),
                Container(
                  padding: EdgeInsets.only(top: 9),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan NIM',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
