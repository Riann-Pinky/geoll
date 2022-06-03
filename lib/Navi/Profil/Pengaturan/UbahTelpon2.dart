import 'package:flutter/material.dart';

import 'Settings.dart';

class Ctelp2 extends StatefulWidget {
  const Ctelp2({Key? key}) : super(key: key);

  @override
  State<Ctelp2> createState() => _Ctelp2State();
}

class _Ctelp2State extends State<Ctelp2> {
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
            Container(
              margin: EdgeInsets.only(left: 30),
              child: const Text("Masukan Kode Verifikasi yang Sudah Dikirim"),
            ),
            //
            //
            //
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffD7E1EC),
                    ),
                    width: 53,
                    height: 60,
                    child: Text(""),
                  ),
                  //
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffD7E1EC),
                    ),
                    width: 53,
                    height: 60,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffD7E1EC),
                    ),
                    width: 53,
                    height: 60,
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffD7E1EC),
                    ),
                    width: 53,
                    height: 60,
                    child: Text(""),
                  ),
                ],
              ),
            ),

            //

            Center(
              child: Container(
                  child: TextButton(
                onPressed: () {},
                child: Text("Kirim Ulang"),
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
            child: Text("Verifikasi"),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xffB4CFB0),
          ),
        ),
      ),
    );
  }
}
