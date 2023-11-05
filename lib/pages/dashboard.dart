import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const SafeArea(child: Text('Dashboard')),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Materi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Tugas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Akun',
            ),
          ],
          currentIndex: 0,
          // set color bottom navigation bar
          unselectedItemColor: const Color.fromRGBO(201, 206, 214, 1),
          selectedItemColor: const Color.fromRGBO(47, 87, 139, 1),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Lato',
            fontSize: 8,
          ),
          showUnselectedLabels: true,
          unselectedLabelStyle: const TextStyle(
              fontFamily: 'Lato', fontSize: 10, color: Colors.amber),

          onTap: (index) {},
        ),
      ),
    );
  }
}
