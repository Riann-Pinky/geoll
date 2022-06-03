import 'package:flutter/material.dart';

class tabbar3 extends StatelessWidget {
  const tabbar3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          kettab3(
            gambar: 'assets/images/random/food/3.jpg',
            nama: 'Roti',
            tanggal: '2 Mei 2022',
            jumlah: "5",
            total: '10000',
          ),
        ],
      ),
    );
  }
}

class kettab3 extends StatelessWidget {
  final String nama;
  final String tanggal;
  final String jumlah;
  final String total;
  final String gambar;

  const kettab3(
      {Key? key,
      required this.gambar,
      required this.nama,
      required this.tanggal,
      required this.jumlah,
      required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 335,
      height: 159,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 3,
              offset: Offset(1, 2))
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                gambar,
                height: 53,
                width: 40,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    nama,
                    style: TextStyle(
                      fontFamily: "Montserrat-SemiBold",
                      fontSize: 11,
                    ),
                  ),
                  Text(
                    tanggal,
                    style: TextStyle(
                        fontFamily: "Montserrat-SemiBold",
                        fontSize: 11,
                        color: Color(0xff94B49F)),
                  ),
                ],
              ),
              const Spacer(),
              const Text(
                'Menunggu Pembayaran',
                style: TextStyle(
                  fontFamily: "Montserrat-SemiBold",
                  fontSize: 9,
                  color: Color(0xff94B49F),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Color(0xff94B49F),
          ),
          Row(
            children: [
              Text(
                'Jumlah Barang',
                style: TextStyle(
                  fontFamily: "Montserrat-SemiBold",
                  fontSize: 10.97,
                ),
              ),
              Spacer(),
              Text(
                jumlah,
                style: TextStyle(
                  fontFamily: "Montserrat-SemiBold",
                  fontSize: 10.97,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Total Belanja',
                style: TextStyle(
                  fontFamily: "Montserrat-SemiBold",
                  fontSize: 10.97,
                ),
              ),
              Spacer(),
              Text(
                "Rp." + total,
                style: TextStyle(
                  fontFamily: "Montserrat-SemiBold",
                  fontSize: 10.97,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 132,
            height: 28,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Bantuan',
                style: TextStyle(fontSize: 9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
