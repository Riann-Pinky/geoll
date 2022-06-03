import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../main.dart';
import 'clickAlamat.dart';

class Alamats extends StatefulWidget {
  const Alamats({Key? key}) : super(key: key);

  @override
  State<Alamats> createState() => _AlamatsState();
}

class _AlamatsState extends State<Alamats> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const nav();
                }),
              );
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Color(0xff94B49F),
            ),
          ),
          title: const Text(
            "Alamat",
            style: TextStyle(color: Color(0xff94B49F)),
          ),
        ),
        body: ListView(
          children: [
            Container(
              width: 335,
              height: 110,
              padding: EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return clickAlamat();
                    }),
                  );
                },
                child: ListTile(
                  title: Text("Unrestained"),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("081234987456"),
                      Container(
                          child: Text(
                        "No. A39, Pesona Ciganitri ,Cipagalo, Bojongsoang, Jawa Barat",
                      )),
                      Text("45353")
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
