import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(47, 87, 139, 1),
              Color.fromRGBO(3, 5, 88, 1),
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  SvgPicture.asset(
                    'assets/images/dgrad.svg',
                    // fit: BoxFit.cover,
                    width: double.maxFinite,
                    height: 200,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 45.97, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'Selamat Datang, \n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: 'Khana Zulfana Imam',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // profile picture
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundImage: NetworkImage(
                                'https://api.unira.ac.id/img/profil/mhs/d9674b9d198eecaa13f3f057d5390a12.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 115.0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 178.0,
                        autoPlay: true,
                      ),
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              height: 178,
                              width: 220,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Stack(
                                fit: StackFit.loose,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/Frame.png',
                                        // width: 220,
                                        // height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 115, left: 15, right: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Vivamus turpis ligula, rhoncus et nibh ut, aliquet accumsan ex.',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 4.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                '12 June 2020',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      167, 167, 167, 1),
                                                  fontFamily: 'Lato',
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 8,
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                  left: 7,
                                                  right: 9,
                                                  top: 2,
                                                  bottom: 3,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: const Color.fromRGBO(
                                                      224, 238, 255, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(3),
                                                ),
                                                child: const Text(
                                                  'Berita',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        15, 121, 198, 1),
                                                    fontFamily: 'Lato',
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 8,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        backgroundColor: Colors.white,
                        minimumSize: const Size(40, 20),
                      ),
                      child: const Text(
                        'Berita',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      // size
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: Colors.white,
                          minimumSize: const Size(40, 20),
                        ),
                        child: const Text(
                          'Kegiatan',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        // size
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: Colors.white,
                          minimumSize: const Size(40, 20),
                        ),
                        child: const Text(
                          'Semua',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        // size
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 405.0,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(230, 240, 255, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 11,
                                    horizontal: 10,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/images/desk-lamp.svg'),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Stack(fit: StackFit.loose, children: [
                                    Positioned(
                                      right: 1,
                                      child: SvgPicture.asset(
                                          'assets/images/close.svg'),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Pengumuman',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(19, 76, 152, 1),
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Container(
                                          padding:
                                              const EdgeInsets.only(top: 4),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              125,
                                          child: const Text(
                                            'Tanggal 12 akan diadakan UTS jagan lupa untuk menyelesaikan persyaratan!',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  112, 145, 188, 1),
                                              fontFamily: 'Lato',
                                              fontSize: 10,
                                              fontWeight: FontWeight.normal,
                                              height: 1.2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Layanan Akademik',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 40.0),
                                  child: Wrap(
                                    direction: Axis.horizontal,
                                    spacing: 10,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 170,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(145, 191, 255, 1),
                                              Color.fromRGBO(111, 171, 255, 1),
                                            ],
                                          ),
                                        ),
                                        child: Stack(
                                          fit: StackFit.loose,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 20,
                                                  top: 15,
                                                  bottom: 14),
                                              // margin: EdgeInsets.only(bottom: 14),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 8),
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: SvgPicture.asset(
                                                        'assets/icons/book (1).svg'),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 24,
                                                  right: 14,
                                                  bottom: 7,
                                                  left: 5),
                                              child: SvgPicture.asset(
                                                  'assets/images/blue-box.svg'),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                                top: 60,
                                              ),
                                              child: const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'KRS',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Lato',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Kartu Rencana Studi',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Lato',
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 170,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(255, 206, 87, 1),
                                              Color.fromRGBO(237, 166, 46, 1),
                                            ],
                                          ),
                                        ),
                                        child: Stack(
                                          fit: StackFit.loose,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 20,
                                                  top: 15,
                                                  bottom: 14),
                                              // margin: EdgeInsets.only(bottom: 14),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 8),
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: SvgPicture.asset(
                                                        'assets/icons/grade.svg'),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 42,
                                                right: 14,
                                                bottom: 7,
                                                left: 5,
                                              ),
                                              child: SvgPicture.asset(
                                                  'assets/images/yellow-box.svg'),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                                top: 60,
                                              ),
                                              child: const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'KHS',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Lato',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Kartu Hasil Studi',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Lato',
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 170,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(235, 154, 232, 1),
                                              Color.fromRGBO(214, 73, 182, 1),
                                            ],
                                          ),
                                        ),
                                        child: Stack(
                                          fit: StackFit.loose,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 20,
                                                  top: 15,
                                                  bottom: 14),
                                              // margin: EdgeInsets.only(bottom: 14),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 8),
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: SvgPicture.asset(
                                                        'assets/icons/mortarboard.svg'),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 42,
                                                right: 14,
                                                bottom: 7,
                                                left: 5,
                                              ),
                                              child: SvgPicture.asset(
                                                  'assets/images/pink-box.svg'),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                                top: 60,
                                              ),
                                              child: const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Skripsi',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Lato',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Tugas Akhir Kuliah',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Lato',
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 170,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(154, 235, 210, 1),
                                              Color.fromRGBO(118, 219, 169, 1),
                                            ],
                                          ),
                                        ),
                                        child: Stack(
                                          fit: StackFit.loose,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  left: 20,
                                                  top: 15,
                                                  bottom: 14),
                                              // margin: EdgeInsets.only(bottom: 14),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            bottom: 8),
                                                    padding:
                                                        const EdgeInsets.all(6),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: SvgPicture.asset(
                                                        'assets/icons/teacher.svg'),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 27,
                                                right: 14,
                                                bottom: 7,
                                                left: 5,
                                              ),
                                              child: SvgPicture.asset(
                                                  'assets/images/green-box.svg'),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                                top: 60,
                                              ),
                                              child: const Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Bimbingan',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Lato',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Info Dosen Pembimbing',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Lato',
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
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
      backgroundColor: Colors.transparent,
      focusColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(4, 9, 86, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: SvgPicture.asset(
          'assets/icons/qr-code.svg',
          width: 24,
          height: 24,
        ),
      ),
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
      child: SizedBox(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                MaterialButton(
                  elevation: 0,
                  // padding: const EdgeInsets.only(left: 25),
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
                  // padding: const EdgeInsets.only(left: 44, right: 47),
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
                  // padding: const EdgeInsets.only(left: 40, right: 26),
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
                  // padding: const EdgeInsets.only(left: 32, right: 26),
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
