import 'package:flutter/material.dart';
import 'package:komas_latihan/pages/login_page.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intropage':(context) => const IntroPage(),
        '/loginpage':(context) => const LoginPage(),
        '/menupage':(context) => const MenuPage()
      }
    );
  }
}