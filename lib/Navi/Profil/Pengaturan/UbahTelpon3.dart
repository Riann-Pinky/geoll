import 'package:flutter/material.dart';

import 'Settings.dart';

class Ctelp3 extends StatefulWidget {
  const Ctelp3({Key? key}) : super(key: key);

  @override
  State<Ctelp3> createState() => _Ctelp3State();
}

class _Ctelp3State extends State<Ctelp3> {
  TextEditingController mycont = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  bool _secureteks1 = true;

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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const seting();
                        }),
                      );
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
                    "Ubah No.Handphone",
                    style: TextStyle(
                      color: Color(0xffB4CFB0),
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 17,
                    ),
                  ),
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
                        "No.Handphone Baru",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Montserrat-Regular",
                          fontSize: 18,
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "No.Handphone Baru Kamu",
                          hintStyle: const TextStyle(
                            color: Color(0xffB4CFB0),
                            fontFamily: "Montserrat-Regular",
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                      const Divider(
                        color: Color(0xff94B49F),
                        height: 2,
                      ),
                      //
                    ],
                  )),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        width: 335,
        height: 40,
        margin: EdgeInsets.all(20),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const seting();
              }),
            );
          },
          child: Center(
            child: Text("Simpan"),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xffB4CFB0),
          ),
        ),
      ),
    );
  }
}
