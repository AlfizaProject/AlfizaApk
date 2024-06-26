import 'dart:io';
import 'package:flutter/material.dart';
import 'package:komas_latihan/CostumView/chat.dart';
import 'package:komas_latihan/CostumView/pembayaran.dart';
import 'package:komas_latihan/CostumView/info.dart';
import 'package:komas_latihan/pages/home_page.dart';
import 'package:komas_latihan/pages/pemesanan/pemesananlt1_page.dart';
import 'package:komas_latihan/pages/pemesanan/pemesananlt2_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key, required this.admin});
  
  final bool admin;

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // late bool admin;
  late bool admin;

  bool isHovering = false;

  Color warna1 = Colors.brown.shade200;
  Color warna2 = Colors.brown;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Stack(
            children: [
              Container(
              height: 275.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/src/images/dashboardkos.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right:  10, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
        
                          },
                        child : Text(
                          "hi. Kids!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow( // bottomLeft
                                offset: const Offset(-0.5, -0.5),
                                color: warna2
                              ),
                              Shadow( // bottomRight
                                offset: const Offset(0.5, -0.5),
                                color: warna2
                              ),
                              Shadow( // topRight
                                offset: const Offset(0.5, 0.5),
                                color: warna2
                              ),
                              Shadow( // topLeft
                                offset: const Offset(-0.5, 0.5),
                                color: warna2
                              ),
                            ]
                         )
                        ),
                        ),
                        PopupMenuButton (
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              height: 40,
                              child: const Text(
                                "Admin Mode",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white
                                ),
                              ),
                              onTap: () {
                                  
                                setState(() {
                                  widget.admin?
                                  admin = false : admin = true;
                                    
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(admin: admin)));
                                });
                              },
                            ),
                            PopupMenuItem(
                              
                              height: 40,
                              child: const Text(
                                'Ganti Akun',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white

                                ),
                              ),
                              onTap: (){
                                
                              },
                            ),
                            PopupMenuItem(
                              
                              height: 40,
                              child: const Text(
                                'keluar',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white

                                ),
                              ),
                              onTap: (){
                                exit(exitCode);
                              },
                            )
                          ],

                          color: warna2,
                          position: PopupMenuPosition.under,
                        child: Container(
                          alignment: Alignment.topRight ,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: const DecorationImage(image: AssetImage('lib/src/images/3.jpeg'),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(45),
                            border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 2
                            )
                          ),
                        ),
                        ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    Container(
                      height: 90,
                      width: 270,
                      decoration: BoxDecoration(
                        color: warna2,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [ BoxShadow(
                      color: warna1,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 16, right: 18, left: 16),
                        child: Row (
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Pembayaran(),
                            Chat(),
                            Info(),
                          ]
                        )
                      ),
                    ),

                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(bottom: 35),
                      height: MediaQuery.of(context).size.height *0.4,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => 
                                const Pemesananlt1Page(),
                                ),
                              );
                            },
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40.0) ),
                          child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 105,
                              width: 125,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('lib/src/images/2.jpeg'), 
                                  fit: BoxFit.cover
                                  ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: warna2,
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 70, left: 20),
                                child: Text(
                                  'Lt.1',
                                  style: TextStyle(fontSize: 20, 
                                  fontWeight: FontWeight.bold, 
                                  color: Colors.white, 
                                  shadows: [
                                    Shadow( // bottomLeft
                                      offset: const Offset(-1.5, -1.5),
                                      color: warna2
                                    ),
                                    Shadow( // bottomRight
                                      offset: const Offset(1.5, -1.5),
                                      color: warna2
                                    ),
                                    Shadow( // topRight
                                      offset: const Offset(1.5, 1.5),
                                      color: warna2
                                    ),
                                    Shadow( // topLeft
                                      offset: const Offset(-1.5, 1.5),
                                      color: warna2
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          MaterialButton(
                              onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => 
                                const Pemesananlt2Page(),
                                ),
                              );
                              },
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40.0) ),
                              child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  height: 105,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage('lib/src/images/1.jpeg'), 
                                      fit: BoxFit.cover
                                      ),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: warna2,
                                        spreadRadius: 3,
                                        blurRadius: 7,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 70, left: 20),
                                    child: Text(
                                      'Lt.2',
                                      style: TextStyle(fontSize: 20, 
                                      fontWeight: FontWeight.bold, 
                                      color: Colors.white, 
                                      shadows: [
                                        Shadow( // bottomLeft
                                          offset: const Offset(-1.5, -1.5),
                                          color: warna2
                                        ),
                                        Shadow( // bottomRight
                                          offset: const Offset(1.5, -1.5),
                                          color: warna2
                                        ),
                                        Shadow( // topRight
                                          offset: const Offset(1.5, 1.5),
                                          color: warna2
                                        ),
                                        Shadow( // topLeft
                                          offset: const Offset(-1.5, 1.5),
                                          color: warna2
                                        ),
                                      ]),
                                    ),
                                  ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
      ],
    ),
    );
  }
}