import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(47, 87, 139, 1),
                  Color.fromRGBO(3, 5, 88, 1)
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, top: 39.73),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Selamat Pagi',
                              style: TextStyle(
                                fontFamily: 'Lato',
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Khana Zulfana Imam',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 21),
                        child: const CircleAvatar(
                          radius: 34,
                          backgroundImage: NetworkImage(
                              'https://api.unira.ac.id/img/profil/mhs/8e35dc4c9c4b61b341800d1ef1f10eba.jpg'),
                        ),
                      )
                    ],
                  ),
                ),
                const Stack(
                  fit: StackFit.loose,
                  children: [
                    Row(
                      children: [Text('asdfsf')],
                    ),
                    SizedBox(
                      // width mengikuti dimensi layar
                      width: double.infinity,
                      height: 470.0,
                      child: DecoratedBox(
                        // buat melengkungkan sisi atas
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const FloatingButton(),
        bottomNavigationBar: const NavigationButtomBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

class FloatingButton extends StatefulWidget {
  const FloatingButton({
    super.key,
  });

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color.fromRGBO(4, 9, 86, 1),
      elevation: 1,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: SvgPicture.asset('assets/icons/qr-code.svg'),
    );
  }
}

class NavigationButtomBar extends StatefulWidget {
  const NavigationButtomBar({
    super.key,
  });

  @override
  State<NavigationButtomBar> createState() => _NavigationButtomBarState();
}

class _NavigationButtomBarState extends State<NavigationButtomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 8,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(118, 118, 118, 0),
              blurRadius: 3,
            ),
          ],
        ),
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                MaterialButton(
                  padding: const EdgeInsets.only(left: 25, right: 44),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/page.svg',
                        height: 24,
                        width: 24,
                      ),
                      const Text(
                        'Home',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(47, 87, 139, 1),
                          fontFamily: 'Lato',
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  padding: const EdgeInsets.only(left: 25, right: 47),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/calendar (10).svg',
                        height: 23,
                        width: 23,
                      ),
                      const Text(
                        'Jadwal',
                        style: TextStyle(
                          color: Color.fromRGBO(47, 87, 139, 1),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lato',
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  padding: const EdgeInsets.only(left: 40, right: 26),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/rupiah (1).svg'),
                      const Text(
                        'Keuangan',
                        style: TextStyle(
                            color: Color.fromRGBO(47, 87, 139, 1),
                            fontFamily: 'Lato',
                            fontSize: 8),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  padding: const EdgeInsets.only(left: 32, right: 26),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons/calendar (15).svg',
                        width: 23,
                        height: 23,
                      ),
                      const Text(
                        'Kalender',
                        style: TextStyle(
                            color: Color.fromRGBO(47, 87, 139, 1),
                            fontFamily: 'Lato',
                            fontSize: 8),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
