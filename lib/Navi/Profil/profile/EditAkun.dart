import 'dart:async';

import 'package:flutter/material.dart';

import 'akun.dart';

class edit extends StatefulWidget {
  const edit({
    Key? key,
  }) : super(key: key);

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  final TextEditingController con = TextEditingController();
  String? im;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
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
                                return akun();
                              }),
                            );
                          },
                          child: Text(
                            "Simpan",
                            style: TextStyle(
                              fontFamily: "Montserrat-SemiBold",
                              fontSize: 16,
                              color: Color(0xffB4CFB0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //
                  //
                  //
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
                        margin: EdgeInsets.all(10), child: Text("Users")),
                  ),
                  const Divider(
                    color: Color(0xff94B49F),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama Lengkap",
                            style: TextStyle(
                                fontFamily: "Montserrat-Regular", fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            width: 335,
                            height: 20,
                            child: TextField(
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                  hintText: "Users",
                                  hintStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: "Montserrat-SemiBold",
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
                            "Username",
                            style: TextStyle(
                                fontFamily: "Montserrat-Regular", fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            width: 335,
                            height: 20,
                            child: TextField(
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                  hintText: "rglmhrdk",
                                  hintStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: "Montserrat-SemiBold",
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
                            "Jenis Kelamin",
                            style: TextStyle(
                                fontFamily: "Montserrat-Regular", fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            width: 300,
                            height: 20,
                            child: TextField(
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                  hintText: "Laki Laki",
                                  hintStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: "Montserrat-SemiBold",
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

                  //three

                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tanggal Lahir",
                            style: TextStyle(
                                fontFamily: "Montserrat-Regular", fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            width: 300,
                            height: 20,
                            child: TextField(
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                  hintText: "01/02/1983",
                                  hintStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: "Montserrat-SemiBold",
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
                  //fourth

                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "No.Handphone",
                            style: TextStyle(
                                fontFamily: "Montserrat-Regular", fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            width: 300,
                            height: 20,
                            child: TextField(
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                  hintText: "081234567890",
                                  hintStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: "Montserrat-SemiBold",
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

                  //fifth

                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                                fontFamily: "Montserrat-Regular", fontSize: 14),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            width: 335,
                            height: 20,
                            child: TextField(
                              controller: TextEditingController(),
                              decoration: InputDecoration(
                                  hintText: "RglMhardika@gmail.com",
                                  hintStyle: const TextStyle(
                                    color: Colors.black87,
                                    fontFamily: "Montserrat-SemiBold",
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
            ),
          ],
        ),
      ),
    );
  }
}
