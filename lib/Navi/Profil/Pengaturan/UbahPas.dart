import 'package:flutter/material.dart';

import 'Settings.dart';

class Cpassword extends StatefulWidget {
  const Cpassword({Key? key}) : super(key: key);

  @override
  State<Cpassword> createState() => _CpasswordState();
}

class _CpasswordState extends State<Cpassword> {
  TextEditingController mycont = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  bool _secureteks1 = true;
  bool _secureteks2 = true;
  bool _secureteks3 = true;
  String? im;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_sharp,
                      size: 30,
                      color: Color(0xffB4CFB0),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Ubah Password",
                    style: TextStyle(
                      color: Color(0xffB4CFB0),
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 17,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const seting();
                        }),
                      );
                    },
                    child: const Text(
                      "Simpan",
                      style: TextStyle(
                        color: Color(0xffB4CFB0),
                        fontFamily: "Montserrat-SemiBold",
                        fontSize: 17,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //
            //
            //
            //

            //
            //
            //

            Container(
              margin: const EdgeInsets.all(20),
              child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Password Lama",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Montserrat-Regular",
                          fontSize: 18,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Masukan  Password Lama",
                          hintStyle: const TextStyle(
                            color: Color(0xffB4CFB0),
                            fontFamily: "Montserrat-Regular",
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _secureteks1
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: const Color(0xffB4CFB0),
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                _secureteks1 = !_secureteks1;
                              });
                            },
                          ),
                        ),
                        enableInteractiveSelection: false,
                        obscureText: _secureteks1,
                      ),
                      const Divider(
                        color: Color(0xff94B49F),
                        height: 2,
                      ),
                      //
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Password Baru",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Montserrat-Regular",
                          fontSize: 18,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Masukan  Password Baru",
                            hintStyle: const TextStyle(
                              color: Color(0xffB4CFB0),
                              fontFamily: "Montserrat-Regular",
                              fontSize: 15,
                            ),
                            border: InputBorder.none,
                            disabledBorder: null,
                            hoverColor: const Color(0xffB4CFB0),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _secureteks2
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                                size: 20,
                                color: const Color(0xffB4CFB0),
                              ),
                              onPressed: () {
                                setState(() {
                                  _secureteks2 = !_secureteks2;
                                });
                              },
                            )),
                      ),
                      const Divider(
                        color: Color(0xff94B49F),
                        height: 2,
                      ),
                      //
                      //
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Ulangi Password Baru",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Montserrat-Regular",
                          fontSize: 18,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Masukan  Password Baru",
                          hintStyle: const TextStyle(
                            color: Color(0xffB4CFB0),
                            fontFamily: "Montserrat-Regular",
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _secureteks3
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: const Color(0xffB4CFB0),
                              size: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                _secureteks3 = !_secureteks3;
                              });
                            },
                          ),
                        ),
                        obscureText: _secureteks3,
                      ),
                      const Divider(
                        color: Color(0xff94B49F),
                        height: 2,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
