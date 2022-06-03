import 'package:flutter/material.dart';

import 'EditAkun.dart';

class akun extends StatefulWidget {
  const akun({Key? key}) : super(key: key);

  @override
  State<akun> createState() => _akunState();
}

class _akunState extends State<akun> {
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
                            return edit();
                          }),
                        );
                      },
                      child: Text(
                        "Edit",
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
                child:
                    Container(margin: EdgeInsets.all(10), child: Text('Users')),
              ),
              const Divider(
                color: Color(0xff94B49F),
              ),
              SizedBox(
                height: 30,
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
                              "Nama Lengkap",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Text(
                              "  " + "Ragil Mahardika",
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
                              "Username",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Text(
                              "  " + "rglmhrdk",
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
                              "Jenis Kelamin",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Text(
                              "  " + "Pria",
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

                    //three

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tangal Lahir",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Text(
                              "  " + "00/00/0000",
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

                    //fourth

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "No. Handphone",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Text(
                              "  " + "081234567890",
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

                    //fifth

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "E-Mail",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 14),
                            ),
                            Text(
                              "  " + "dontknow@Gmain.com",
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
