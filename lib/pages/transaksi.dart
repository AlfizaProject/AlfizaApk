import 'package:komas_latihan/pages/buktitransfer_page.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Transaksi extends StatefulWidget {
  Transaksi({super.key, this.harga, required this.kamar, required this.lantai});
  int ?harga;
  String kamar;
  String lantai;

  @override
//   State<Transaksi> createState() => _TransaksiState(harga: harga, kamar: kamar, lantai: lantai);
// }
  State<Transaksi> createState() => _TransaksiState();
}

class _TransaksiState extends State<Transaksi> {
  // _TransaksiState({required this.harga, required this.kamar, required this.lantai});

  // late String kamar;
  // late String lantai;
  // late int harga;

  Color warna1 = Colors.brown.shade100;
  Color warna2 = Colors.brown;
  double tinggibar = 90;

  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: warna2,
        automaticallyImplyLeading: false,
        title: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                alignment: Alignment.center,
                child:
                  const Text(
                    "Pembayaran",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  ),
              ),
            ),
          ],
        ),
    ),
      bottomNavigationBar: BottomAppBar(
        color: warna2,
        height: tinggibar,
        shadowColor: Colors.black,
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
            //tab
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                  Padding(
                    padding: EdgeInsets.only(right: 125),
                    child: Text(
                      textAlign: TextAlign.start,
                      "Rp",
                    style: TextStyle(color: Colors.white, fontSize: 12)
                    ),
                  ),
                  Text(
                    "500.000 - 800.000",
                  style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.bold)
                  ),
                  ],
                ),
              ),
              InkWell (
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BuktiTransfer(),));
                },
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 45,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: warna1,
                      style: BorderStyle.solid,
                      width: 1
                    ),
                    boxShadow: [BoxShadow(
                      color: warna1.withOpacity(0.2),
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                    ],
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Pesan Kamar",
                      style: TextStyle(fontSize: 12, color: warna2, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: 
      ListView.separated(
        itemBuilder: (context, index) {
          return keranjang(index);
        }, separatorBuilder: (context, index) {
          return const Divider(height: 0,);
        }, itemCount: 1)
      
    );
  }

  Widget keranjang (int index){
    return Card(
      color: warna1,
      child: Container(
        margin: const EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 

            Container(
              alignment: Alignment.centerLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: check, 
                    activeColor: warna2,
                    onChanged: (value){
                      setState(() {
                        check = value;
                      });
                    }
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Column(
                    children: [
                  Text(
                    'Kamar ${widget.kamar}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'Lantai ${widget.lantai}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  'Rp. ${widget.harga.toString().substring(0,3)}.${widget.harga.toString().substring(3,)} /',
                  style: TextStyle(
                    fontSize: 13,
                    color: warna2,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '1 bulan',
                  style: TextStyle(
                    fontSize: 13,
                    color: warna2,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}