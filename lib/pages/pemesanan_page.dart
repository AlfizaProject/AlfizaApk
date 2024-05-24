import 'package:komas_latihan/pages/transaksi.dart';
import 'package:flutter/material.dart';

class Pesanlt1 {
  Color tombol;
  String nokamar;
  String nomorlantai;
  int selectedindex;
  String harga;
  int hargabayar;
  bool kondisi = true;

  Pesanlt1({required this.nomorlantai, required this.tombol, required this.nokamar, 
  required this.selectedindex, required this.harga, required this.hargabayar});
}

class Pesanlt2 {
  Color tombol;
  String nokamar;
  String nomorlantai;
  int selectedindex;
  String harga;
  int hargabayar;
  bool kondisi = true;

  Pesanlt2({required this.nomorlantai, required this.tombol, required this.nokamar, 
  required this.selectedindex, required this.harga, required this.hargabayar});
}

class Pemesanan extends StatefulWidget {
  const Pemesanan({super.key, required this.lantai});
  final bool lantai;

  @override
  State<Pemesanan> createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {

  int outindex = 0;
  bool outbool = true;

  bool keranjang = true;

  double tinggi = 25;
  double lebar = 50;
  
  List<Pesanlt1> pesanlt1 = [
  Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'01',
      nomorlantai: '1',
      selectedindex: 0,
      harga: "350.000 / Bulan",
      hargabayar: 350000,
      ),
    Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'02',
      selectedindex: 1,
      nomorlantai: '1',
      harga: "400.000 / Bulan",
      hargabayar: 400000,
    ),
    Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'03',
      selectedindex: 2,
      harga: "450.000 / Bulan",
      nomorlantai: '1',
      hargabayar: 450000,
    ),
    Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'04',
      selectedindex: 3,
      harga: "500.000 / Bulan",
      nomorlantai: '1',
      hargabayar: 500000,
    ),
    Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'05',
      selectedindex: 4,
      harga: "550.000 / Bulan",
      nomorlantai: '1',
      hargabayar: 550000,
    ),
    Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'06',
      selectedindex: 5,
      harga: "600.000 / Bulan",
      nomorlantai: '1',
      hargabayar: 600000,
    ),
    Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'07',
      selectedindex: 6,
      harga: "650.000 / Bulan",
      nomorlantai: '1',
      hargabayar: 650000,
    ),
    Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'08',
      selectedindex: 7,
      harga: "575.000 / Bulan",
      nomorlantai: '1',
      hargabayar: 575000,
    ),
    Pesanlt1(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'09',
      selectedindex: 8,
      harga: "630.000 / Bulan",
      nomorlantai: '1',
      hargabayar: 630000,
    ),
    Pesanlt1(
      tombol:const Color.fromRGBO(217,217,217,1),
      nokamar:'10',
      selectedindex: 9,
      harga: "300.000 / Bulan",
      nomorlantai: '1',
      hargabayar: 300000,
    ),
    
  ];
 
  List<Pesanlt2> pesanlt2 = [
    Pesanlt2(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'01',
      nomorlantai: '2',
      selectedindex: 0,
      harga: "350.000 / Bulan",
      hargabayar: 350000,
      ),
    Pesanlt2(
      tombol:const Color.fromRGBO(217,217,217,1),
      nokamar:'02',
      selectedindex: 1,
      nomorlantai: '2',
      harga: "400.000 / Bulan",
      hargabayar: 400000,
    ),
    Pesanlt2(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'03',
      selectedindex: 2,
      harga: "450.000 / Bulan",
      nomorlantai: '2',
      hargabayar: 450000,
    ),
    Pesanlt2(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'04',
      selectedindex: 3,
      harga: "500.000 / Bulan",
      nomorlantai: '2',
      hargabayar: 500000,
    ),
    Pesanlt2(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'05',
      selectedindex: 4,
      harga: "550.000 / Bulan",
      nomorlantai: '2',
      hargabayar: 550000,
    ),
    Pesanlt2(
      tombol:const Color.fromRGBO(217,217,217,1),
      nokamar:'06',
      selectedindex: 5,
      harga: "600.000 / Bulan",
      nomorlantai: '2',
      hargabayar: 600000,
    ),
    Pesanlt2(
      tombol:const Color.fromRGBO(217,217,217,1),
      nokamar:'07',
      selectedindex: 6,
      harga: "650.000 / Bulan",
      nomorlantai: '2',
      hargabayar: 650000,
    ),
    Pesanlt2(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'08',
      selectedindex: 7,
      harga: "575.000 / Bulan",
      nomorlantai: '2',
      hargabayar: 575000,
    ),
    Pesanlt2(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'09',
      selectedindex: 8,
      harga: "630.000 / Bulan",
      nomorlantai: '2',
      hargabayar: 630000,
    ),
    Pesanlt2(
      tombol: const Color.fromRGBO(217,217,217,1),
      nokamar:'10',
      selectedindex: 9,
      harga: "300.000 / Bulan",
      nomorlantai: '2',
      hargabayar: 300000,
    ),
    
  ];

  Color warna1 = Colors.brown.shade200;
  Color warna2 = Colors.brown;

  @override
  Widget build(BuildContext context) {
    return 
    widget.lantai?
    SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const Text(
                'Fasilitas',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              fasilitas('Kamar Mandi Dalam'),
              fasilitas('Tempat Tidur'),
              fasilitas('Lemari'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Nomor Kamar',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              kamarlt1(pesanlt1[0].selectedindex),kamarlt1(pesanlt1[1].selectedindex),
              kamarlt1(pesanlt1[2].selectedindex),kamarlt1(pesanlt1[3].selectedindex),
              kamarlt1(pesanlt1[4].selectedindex),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              kamarlt1(pesanlt1[5].selectedindex),kamarlt1(pesanlt1[6].selectedindex),
              kamarlt1(pesanlt1[7].selectedindex),kamarlt1(pesanlt1[8].selectedindex),
              kamarlt1(pesanlt1[9].selectedindex),
            ],
          ),
          // HARGA DAN TAB PEMBAYARAN
          const SizedBox(
            height: 30,
          ),

          hargakamarlt1(outindex),

          ]
        ),
      ),
    ):
    
    SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const Text(
                'Fasilitas',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              fasilitas('Kamar Mandi Dalam'),
              fasilitas('Tempat Tidur'),
              fasilitas('Lemari'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Nomor Kamar',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              const SizedBox(
                height: 15,
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              kamarlt1(pesanlt2[0].selectedindex),kamarlt1(pesanlt2[1].selectedindex),
              kamarlt1(pesanlt2[2].selectedindex),kamarlt1(pesanlt2[3].selectedindex),
              kamarlt1(pesanlt2[4].selectedindex),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              kamarlt1(pesanlt2[5].selectedindex),kamarlt1(pesanlt2[6].selectedindex),
              kamarlt1(pesanlt2[7].selectedindex),kamarlt1(pesanlt2[8].selectedindex),
              kamarlt1(pesanlt2[9].selectedindex),
            ],
          ),
          // HARGA DAN TAB PEMBAYARAN
          const SizedBox(
            height: 30,
          ),

          hargakamarlt2(outindex),

          ]
        ),
      ),
    );
    
  
  }

  Widget kamarlt1(int index){
    return InkWell(
      onTap: () {
          pesanlt1[index].kondisi? 
          setState(() {
            pesanlt1[index].tombol = const Color.fromRGBO(101, 101, 101, 1);
            outindex = pesanlt1[index].selectedindex;
            pesanlt1[index].kondisi = false;
            outbool = pesanlt1[index].kondisi;
          }):
          setState(() {
            pesanlt1[index].tombol =const Color.fromRGBO(217,217,217,1);
            pesanlt1[index].kondisi = true;
            outindex = pesanlt1[index].selectedindex;
            outbool = pesanlt1[index].kondisi;
          });
      },
      onFocusChange: (val) {
        setState(() {
          pesanlt1[index].kondisi = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 170),
        height: tinggi,
        width: lebar,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: pesanlt1[index].tombol,
          borderRadius: BorderRadius.circular(3),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(198,198,198,1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 2,)
            ),
          ]
        ),
        child: Text(
          textAlign: TextAlign.center,
          pesanlt1[index].nokamar,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Widget kamarlt2(int index){
    return InkWell(
      onTap: () {
          pesanlt2[index].kondisi? 
          setState(() {
            pesanlt2[index].tombol =const Color.fromRGBO(101, 101, 101, 1);
            outindex = pesanlt2[index].selectedindex;
            pesanlt2[index].kondisi = false;
            outbool = pesanlt1[index].kondisi;
          }):
          setState(() {
            pesanlt2[index].tombol = const Color.fromRGBO(217,217,217,1);
            pesanlt2[index].kondisi = true;
            outindex = pesanlt2[index].selectedindex;
            outbool = pesanlt2[index].kondisi;
          });
      },
      onFocusChange: (val) {
        setState(() {
          pesanlt2[index].kondisi = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 170),
        height: tinggi,
        width: lebar,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: pesanlt2[index].tombol,
          borderRadius: BorderRadius.circular(3),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(198,198,198,1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 2,)
            ),
          ]
        ),
        child: Text(
          textAlign: TextAlign.center,
          pesanlt2[index].nokamar,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Widget fasilitas (String ket){
    return Row(
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.lightBlue.withOpacity(0.2)
          ),
          child: const Icon(Icons.check, color: Colors.green, size: 10,),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          textAlign: TextAlign.left,
          ket,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Widget hargakamarlt1(int index ){
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            //tab
              outbool?
                const Text(
                  'Kamar Belum Dipilih',
                style: TextStyle(color: Colors.black,fontSize: 13, fontWeight: FontWeight.bold)
                ):
              Column(
                children: [
                const Padding(
                  padding: EdgeInsets.only(right: 125),
                  child: Text(
                    textAlign: TextAlign.start,
                    "Rp",
                  style: TextStyle(color: Colors.black, fontSize: 11)
                  ),
                ),
                Text(
                  pesanlt1[index].harga,
                style: const TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold)
                ),
                ],
              ),
              InkWell (
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Transaksi(
                    harga : pesanlt1[index].hargabayar,
                    kamar: pesanlt1[index].nokamar,
                    lantai: pesanlt1[index].nomorlantai,
                    

                    ),));
                },
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 45,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: warna2,
                      style: BorderStyle.solid,
                      width: 1
                    ),
                    boxShadow: [BoxShadow(
                      color: warna2.withOpacity(0.2),
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
          );
  }

  Widget hargakamarlt2(int index ){
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
            //tab
              outbool?
                const Text(
                  'Kamar Belum Dipilih',
                style: TextStyle(color: Colors.black,fontSize: 13, fontWeight: FontWeight.bold)
                ):
              Column(
                children: [
                const Padding(
                  padding: EdgeInsets.only(right: 125),
                  child: Text(
                    textAlign: TextAlign.start,
                    "Rp",
                  style: TextStyle(color: Colors.black, fontSize: 11)
                  ),
                ),
                Text(
                  pesanlt2[index].harga,
                style: const TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold)
                ),
                ],
              ),
              InkWell (
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Transaksi(
                    harga : pesanlt2[index].hargabayar,
                    kamar: pesanlt2[index].nokamar,
                    lantai: pesanlt2[index].nomorlantai,
                    
                    ),));
                },
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  alignment: Alignment.centerRight,
                  height: 45,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: warna2,
                      style: BorderStyle.solid,
                      width: 1
                    ),
                    boxShadow: [BoxShadow(
                      color: warna2.withOpacity(0.2),
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
          );
  }

}