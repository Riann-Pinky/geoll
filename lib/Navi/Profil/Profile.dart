import 'package:flutter/material.dart';

import 'Alamat/Alamat.dart';
import 'Pengaturan/Settings.dart';
import 'profile/akun.dart';

class HomeProfil extends StatefulWidget {
  const HomeProfil({Key? key}) : super(key: key);

  @override
  State<HomeProfil> createState() => _HomeProfilState();
}

class _HomeProfilState extends State<HomeProfil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Text(
                          "Profil",
                          style: TextStyle(
                              fontFamily: "Montserrat-SemiBold", fontSize: 16),
                        ),
                        Container(
                          width: 72,
                          height: 19,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Color(0xffB4CFB0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              "Pembeli",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  /////////
                  ///   ///
                  ///   ///
                  /////////

                  SizedBox(
                    height: 50,
                  ),

                  Center(
                    child: Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xffB4CFB0),
                          borderRadius: BorderRadius.circular(50)),
                      child: CircleAvatar(
                        foregroundImage:
                            AssetImage('assets/images/random/produk/1.jpg'),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        margin: EdgeInsets.all(10), child: Text('Users')),
                  ),
                  Divider(
                    color: Color(0xffB4CFB0),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: TextButton(
                      onFocusChange: null,
                      onHover: null,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return akun();
                          }),
                        );
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.person, color: Color(0xffB4CFB0)),
                            SizedBox(width: 10),
                            Text(
                              "Akun",
                              style: TextStyle(
                                color: Color(0xffB4CFB0),
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 11,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffB4CFB0),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: TextButton(
                      onFocusChange: null,
                      onHover: null,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return seting();
                          }),
                        );
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.settings, color: Color(0xffB4CFB0)),
                            SizedBox(width: 10),
                            Text(
                              "Pengaturan",
                              style: TextStyle(
                                color: Color(0xffB4CFB0),
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 11,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffB4CFB0),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: TextButton(
                      onFocusChange: null,
                      onHover: null,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const Alamats();
                          }),
                        );
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.location_on, color: Color(0xffB4CFB0)),
                            SizedBox(width: 10),
                            Text(
                              "Alamat",
                              style: TextStyle(
                                color: Color(0xffB4CFB0),
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 11,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xffB4CFB0),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Keluar",
                          style: TextStyle(
                              fontFamily: "Montserrat-SemiBold",
                              color: Colors.redAccent[700],
                              fontSize: 13),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
