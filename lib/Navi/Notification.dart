import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Notif extends StatefulWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
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
              Navigator.of(context).pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Color(0xff94B49F),
            ),
          ),
          title: Text(
            "Notification",
            style: TextStyle(color: Color(0xff94B49F)),
          ),
        ),
        body: ListView(
          children: [
            notip(
              titel: "Produkmu Dalam perjalanan",
              subtitel: "Harap Menunggu",
            ),
            notip(
              titel: "Siapkan Uang Anda",
              subtitel: "Produk Sedang dalam pengemasan",
            )
          ],
        ),
      ),
    );
  }
}

class notip extends StatelessWidget {
  final String titel;
  final String subtitel;

  const notip(
      {Key? key,
      //required Icons lead,
      required this.subtitel,
      required this.titel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 3,
                offset: Offset(1, 2))
          ]),
      child: ListTile(
        leading: Icon(
          Icons.notifications,
          color: Color(0xff94B49F),
          size: 26,
        ),
        title: Text(titel,
            style: TextStyle(fontFamily: "Montserrat-SemiBold", fontSize: 13)),
        subtitle: Text(subtitel,
            style: TextStyle(fontFamily: "Montserrat-SemiBold", fontSize: 11)),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff94B49F),
          ),
        ),
      ),
    );
  }
}
