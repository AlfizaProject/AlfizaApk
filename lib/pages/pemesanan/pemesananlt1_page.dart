import 'package:komas_latihan/CostumView/lantai1.dart';
import 'package:komas_latihan/pages/pemesanan_page.dart';
import 'package:flutter/material.dart';



class Pemesananlt1Page extends StatefulWidget {
  const Pemesananlt1Page({super.key});

  @override
  State<Pemesananlt1Page> createState() => _Pemesananlt1pageState();
}

class _Pemesananlt1pageState extends State<Pemesananlt1Page> {
  
  final List<Widget> screens = [
    const Lantai1(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currenscreen = const Lantai1();

    bool bayar = true;
    double tinggibar = 90;

  Color warna1 = Colors.brown.shade200;
  Color warna2 = Colors.brown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:       
      PageStorage(
        bucket: bucket,
        child: currenscreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          backgroundColor:warna2,
          foregroundColor: Colors.white,
          shape: const CircleBorder(),
          mini: true,
          child: const Icon(Icons.arrow_back),
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
                  showModalBottomSheet(
                    
                    // shape: const RoundedRectangleBorder(
                    // borderRadius:
                    //   BorderRadius.vertical(top: Radius.circular(32))),
                    showDragHandle: true,
                    context: context,
                    builder: (BuildContext context){
                      return const SizedBox(
                        height: 310,
                      child : Pemesanan(lantai: true),

                      );
                    }
                  );
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
    );
  }
}