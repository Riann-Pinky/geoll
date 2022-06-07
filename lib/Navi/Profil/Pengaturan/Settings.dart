import 'package:flutter/material.dart';

import '../../../main.dart';
import 'Email/UbahEmail.dart';
import 'UbahPas.dart';
import 'UbahTelpon.dart';

class seting extends StatefulWidget {
  const seting({Key? key}) : super(key: key);

  @override
  State<seting> createState() => _setingState();
}

class _setingState extends State<seting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) {
                      //     return nav();
                      //   }),
                      // );
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
                    "Pengaturan",
                    style: TextStyle(
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 16,
                      color: Color(0xffB4CFB0),
                    ),
                  ),
                ],
              ),

              /////////
              ///   ///
              ///   ///
              /////////

              SizedBox(
                height: 20,
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
                        return Cpassword();
                      }),
                    );
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.lock, color: Color(0xffB4CFB0)),
                        SizedBox(width: 10),
                        Text(
                          "Ubah Password",
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
              Divider(
                color: Color(0xffB4CFB0),
              ),
              Container(
                decoration: BoxDecoration(),
                child: TextButton(
                  onFocusChange: null,
                  onHover: null,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Cemail();
                        },
                      ),
                    );
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.email, color: Color(0xffB4CFB0)),
                        SizedBox(width: 10),
                        Text(
                          "Ubah Email",
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
              const Divider(
                color: Color(0xffB4CFB0),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: TextButton(
                  onFocusChange: null,
                  onHover: null,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Ctelp();
                      }),
                    );
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Icon(Icons.phone_android, color: Color(0xffB4CFB0)),
                        SizedBox(width: 10),
                        Text(
                          "Ubah No.Handphone",
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
              const Divider(
                color: Color(0xffB4CFB0),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
