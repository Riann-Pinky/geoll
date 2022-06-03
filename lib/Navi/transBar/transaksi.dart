import 'package:flutter/material.dart';
import 'package:geoll/Navi/transBar/tabbar2.dart';
import '../Notification.dart';
import 'tabbar1.dart';
import 'tabbar3.dart';
import 'tabbar4.dart';

class trans extends StatefulWidget {
  const trans({Key? key}) : super(key: key);

  @override
  State<trans> createState() => _transState();
}

class _transState extends State<trans> {
  TextEditingController? _textEditingController = TextEditingController();

  int hexcolor(String color) {
    String newcolor = '0xff' + color;

    newcolor = newcolor.replaceAll('#', '');

    int finalcolor = int.parse(newcolor);
    return finalcolor;
  }

  List<Widget> myTab = [
    Container(
      height: 40,
      width: 145,
      child: Tab(
        child: Text(
          "Belum Dibayar",
          style: TextStyle(fontFamily: "Montserrat-SemiBold", fontSize: 12),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 145,
      child: Tab(
        child: Text(
          "Dikemas",
          style: TextStyle(fontFamily: "Montserrat-SemiBold", fontSize: 12),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 145,
      child: Tab(
        child: Text(
          "Dikirim",
          style: TextStyle(fontFamily: "Montserrat-SemiBold", fontSize: 12),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 145,
      child: Tab(
        child: Text(
          "Selesai",
          style: TextStyle(fontFamily: "Montserrat-SemiBold", fontSize: 12),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 0,
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              decoration: BoxDecoration(
                  color: Color(hexcolor("D7E1EC")),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(5),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      fontFamily: "Montserrat-SemiBold",
                      color: Color(
                        hexcolor("#94B49F"),
                      )),
                  icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_sharp,
                      size: 35,
                      color: Color(
                        hexcolor("#94B49F"),
                      ),
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    //barangs = barang.toList();
                  });
                },
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Notif();
                    }),
                  );
                },
                icon: Icon(Icons.notifications),
                color: Color(0xff94B49F),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  color: Color(0xff94B49F),
                ),
              ),
            ],
            ///////
            ///
            ///
            //////

            bottom: TabBar(
                //onTap: ,
                indicatorWeight: 0.1,
                indicator: BoxDecoration(
                  color: Color(0xff94B49F),
                ),
                isScrollable: true,
                unselectedLabelColor: Colors.black,
                tabs: myTab),
          ),
          body: TabBarView(children: [
            tabbar1(),
            tabbar2(),
            tabbar3(),
            tabbar4(),
          ]),
        ),
      ),
    );
  }
}
