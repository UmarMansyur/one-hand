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
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'NIM',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 9, bottom: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                      ),
                      hintText: 'Masukkan NIM/NIS anda….',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(201, 206, 214, 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                      ),
                      focusColor: const Color.fromRGBO(240, 240, 240, 1),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Kata Sandi',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 9, bottom: 35),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                      ),
                      hintText: 'PIN/Kata Sandi',
                      hintStyle: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(201, 206, 214, 1),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(240, 240, 240, 1),
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.visibility,
                          color: Color.fromRGBO(201, 206, 214, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(4, 9, 86, 1),
                    minimumSize: const Size(double.infinity, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Masuk'),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
