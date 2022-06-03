import 'package:flutter/material.dart';

import 'Alamat.dart';
import 'clickAlamat.dart';

class editalamat extends StatefulWidget {
  const editalamat({Key? key}) : super(key: key);

  @override
  State<editalamat> createState() => _editalamatState();
}

class _editalamatState extends State<editalamat> {
  TextEditingController con = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return clickAlamat();
                          }),
                        );
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_left_sharp,
                        size: 30,
                        color: Color(0xffB4CFB0),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Profil",
                      style: TextStyle(
                        fontFamily: "Montserrat-SemiBold",
                        fontSize: 16,
                        color: Color(0xffB4CFB0),
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Alamats();
                          }),
                        );
                      },
                      child: Text(
                        "Simpan",
                        style: TextStyle(
                          color: Color(0xffB4CFB0),
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Atas Nama",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              width: 335,
                              height: 20,
                              child: TextField(
                                controller: TextEditingController(),
                                decoration: InputDecoration(
                                    hintText: "Unrestained",
                                    hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 13,
                                    ),
                                    border: InputBorder.none),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0xffB4CFB0),
                    ),

                    //01 One

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "No.Handphone",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              width: 335,
                              height: 20,
                              child: TextField(
                                controller: TextEditingController(),
                                decoration: InputDecoration(
                                    hintText: "081234987345",
                                    hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 13,
                                    ),
                                    border: InputBorder.none),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0xffB4CFB0),
                    ),

                    //two

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Provinsi",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              width: 300,
                              height: 20,
                              child: TextField(
                                controller: TextEditingController(),
                                decoration: InputDecoration(
                                    hintText: "Jawa Barat",
                                    hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 13,
                                    ),
                                    border: InputBorder.none),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffB4CFB0),
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0xffB4CFB0),
                    ),

                    //three

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kabupaten/Kota",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              width: 300,
                              height: 20,
                              child: TextField(
                                controller: TextEditingController(),
                                decoration: InputDecoration(
                                    hintText: "Bandung",
                                    hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 13,
                                    ),
                                    border: InputBorder.none),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffB4CFB0),
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0xffB4CFB0),
                    ),
                    //fourth

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kecamatan/Kelurahan",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              width: 300,
                              height: 20,
                              child: TextField(
                                controller: TextEditingController(),
                                decoration: InputDecoration(
                                    hintText: "BojongSoang",
                                    hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 13,
                                    ),
                                    border: InputBorder.none),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffB4CFB0),
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0xffB4CFB0),
                    ),

                    //fifth

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Keterangan",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              width: 335,
                              height: 20,
                              child: TextField(
                                controller: TextEditingController(),
                                decoration: InputDecoration(
                                    hintText: "No.A39",
                                    hintStyle: const TextStyle(
                                      color: Colors.black87,
                                      fontFamily: "Montserrat-Regular",
                                      fontSize: 13,
                                    ),
                                    border: InputBorder.none),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Color(0xffB4CFB0),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
