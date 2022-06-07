import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './Notification.dart';
//import 'package:pjc1/home/notip.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController? _textEditingController = TextEditingController();
  String titel = " Ini Adalah HomePage";

  int hexcolor(String color) {
    String newcolor = '0xff' + color;

    newcolor = newcolor.replaceAll('#', '');

    int finalcolor = int.parse(newcolor);
    return finalcolor;
  }

  final List<Widget> buyer = [
    Container(
      color: Color(0xff8DC3A7),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Gerobak Online                ",
                        style: TextStyle(
                            fontFamily: "Poppin-Medium",
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    "No Need to Go Out ",
                    style: TextStyle(
                        fontFamily: "Poppin-SemiBold",
                        fontSize: 14,
                        color: Color(0xffF9F9F9)),
                  ),
                  Text(
                    "to Buy Vegetables. ",
                    style: TextStyle(
                        fontFamily: "Poppin-SemiBold",
                        fontSize: 14,
                        color: Color(0xffF9F9F9)),
                  ),
                ]),
          ),
          Image.asset(
            'assets/images/carousel/01.png',
          ),
        ],
      ),
    ),

    //////////

    Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Gerobak Online         ",
                        style: TextStyle(
                            fontFamily: "Poppin-Medium",
                            fontSize: 11,
                            color: Color(0xff94B49F)),
                      ),
                    ],
                  ),
                  Text(
                    "Buy Vegetables  ",
                    style: TextStyle(
                        fontFamily: "Poppin-SemiBold",
                        fontSize: 14,
                        color: Color(0xff030113)),
                  ),
                  Text(
                    "in a Simple Way. ",
                    style: TextStyle(
                        fontFamily: "Poppin-SemiBold",
                        fontSize: 14,
                        color: Color(0xff030113)),
                  ),
                ]),
          ),
          Image.asset(
            'assets/images/carousel/02.png',
          ),
        ],
      ),
    ),

    /////////,
    ///,

    Container(
      color: Color(0xff8DC3A7),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Gerobak Online                             ",
                        style: TextStyle(
                            fontFamily: "Poppin-Medium",
                            fontSize: 11,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    "Many Option to Make a ",
                    style: TextStyle(
                        fontFamily: "Poppin-SemiBold",
                        fontSize: 14,
                        color: Color(0xffF9F9F9)),
                  ),
                  Text(
                    "Payment.                              ",
                    style: TextStyle(
                        fontFamily: "Poppin-SemiBold",
                        fontSize: 14,
                        color: Color(0xffF9F9F9)),
                  ),
                ]),
          ),
          Image.asset(
            'assets/images/carousel/03.png',
          ),
        ],
      ),
    ),
  ];
  List<Widget> barangs = [];
  List<Widget> barang = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      fontFamily: "Montserrat",
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                  color: Color(0xff94B49F),
                ),
              ),
            ],
          ),
          body: ListView(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                    height: 140.0,
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 10)),
                items: buyer,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Builder(builder: (context) {
                        return makan(gambar: "", teks: "02");
                      }),
                    ),
                    Container(
                      height: 540,
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            return Container(
                              width: 157,
                              height: 150,
                              child: Card(
                                shadowColor: Colors.black,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/random/produk/1.jpg'),
                                        width: 90,
                                        height: 90,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Item Produk',
                                            style: TextStyle(
                                              fontFamily: "Montserrat-SemiBold",
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class produk extends StatelessWidget {
  final String gambar;
  final String teks;
  final String gambar1;
  final String teks1;

  const produk({
    Key? key,
    required this.gambar,
    required this.teks,
    required this.gambar1,
    required this.teks1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 157,
            height: 150,
            child: Card(
              shadowColor: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image(
                      image: AssetImage(gambar),
                      width: 90,
                      height: 90,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          teks,
                          style: TextStyle(
                            fontFamily: "Montserrat-SemiBold",
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            width: 157,
            height: 150,
            child: Card(
              shadowColor: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image(
                      image: AssetImage(gambar1),
                      width: 90,
                      height: 90,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          teks1,
                          style: TextStyle(
                            fontFamily: "Montserrat-SemiBold",
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class minum extends StatelessWidget {
  final String gambar;
  final String teks;
  const minum({Key? key, required this.gambar, required this.teks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: Card(
        shadowColor: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image(
                image: AssetImage(gambar),
                width: 46,
                height: 32,
              ),
            ),
            Text(
              teks,
              style: TextStyle(
                fontFamily: "Montserrat-SemiBold",
                fontSize: 10.97,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class makan extends StatelessWidget {
  final String gambar;
  final String teks;
  const makan({Key? key, required this.gambar, required this.teks})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: Card(
        shadowColor: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image(
                image: AssetImage(gambar),
                width: 46,
                height: 32,
              ),
            ),
            Text(
              teks,
              style: TextStyle(
                fontFamily: "Montserrat-SemiBold",
                fontSize: 10.97,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
