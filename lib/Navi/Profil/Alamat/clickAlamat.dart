import 'package:flutter/material.dart';

import 'Alamat.dart';
import 'editalamat.dart';

class clickAlamat extends StatefulWidget {
  const clickAlamat({Key? key}) : super(key: key);

  @override
  State<clickAlamat> createState() => _clickAlamatState();
}

class _clickAlamatState extends State<clickAlamat> {
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
                            return Alamats();
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
                      "Alamat",
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
                            return editalamat();
                          }),
                        );
                      },
                      child: Text(
                        "Ubah",
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
                            Text(
                              "  " + "Unrestained",
                              style: TextStyle(
                                  fontFamily: "Montserrat-SemiBold",
                                  fontSize: 13,
                                  color: Color(0xffB4CFB0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
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
                            Text(
                              "  " + "081234987456",
                              style: TextStyle(
                                  fontFamily: "Montserrat-SemiBold",
                                  fontSize: 13,
                                  color: Color(0xffB4CFB0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
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
                            Text(
                              "  " + "Jawa Barat",
                              style: TextStyle(
                                fontFamily: "Montserrat-SemiBold",
                                fontSize: 13,
                                color: Color(0xffB4CFB0),
                              ),
                            ),
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
                      height: 20,
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
                            Text(
                              "  " + "Bandung",
                              style: TextStyle(
                                  fontFamily: "Montserrat-SemiBold",
                                  fontSize: 13,
                                  color: Color(0xffB4CFB0)),
                            ),
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
                      height: 20,
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
                            Text(
                              "  " + "BojongSoang",
                              style: TextStyle(
                                  fontFamily: "Montserrat-SemiBold",
                                  fontSize: 13,
                                  color: Color(0xffB4CFB0)),
                            ),
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
                      height: 20,
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
                            Text(
                              "  " + "No.A39",
                              style: TextStyle(
                                  fontFamily: "Montserrat-SemiBold",
                                  fontSize: 13,
                                  color: Color(0xffB4CFB0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      height: 20,
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
