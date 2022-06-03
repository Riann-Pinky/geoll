import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Navi/HomePage.dart';
import 'Navi/Profil/Profile.dart';
import 'Navi/transBar/transaksi.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();//
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: nav(),
    );
  }
}

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  TextEditingController? _textEditingController = TextEditingController();
  // int hexcolor(String color) {
  //   String newcolor = '0xff' + color;

  //   newcolor = newcolor.replaceAll('#', '');

  //   int finalcolor = int.parse(newcolor);
  //   return finalcolor;
  // }

  int _selectedIndex = 0;

  List<Widget> _OpsiWidget = <Widget>[
    HomePage(),
    trans(),
    HomeProfil(),
  ];

  void _Itemtap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: _OpsiWidget.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(0xff94B49F),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message_outlined,
                ),
                label: "Transaksi"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outlined,
                ),
                label: "profil"),
          ],
          currentIndex: _selectedIndex,
          onTap: _Itemtap,
        ),
      ),
    );
  }
}
