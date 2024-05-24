import 'package:flutter/material.dart';
import 'package:komas_latihan/data/login_or_regis.dart';
import 'package:komas_latihan/pages/forgotpw/forgotpw_page.dart';
import 'package:komas_latihan/pages/forgotpw/verifypw_page.dart';
import 'package:komas_latihan/pages/home_page.dart';
import 'package:komas_latihan/pages/login_page.dart';
import 'pages/intro_page.dart';
import 'pages/register_page.dart';
import 'pages/menu_page.dart';
import 'src/style.dart';

void main (){
  runApp(MyApp(admin: true));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key, required this.admin});
  bool admin;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: style,
      routes: {
        '/intropage':(context) => const IntroPage(),
        '/loginpage':(context) => LoginPage(),
        '/registerpage':(context) => RegisterPage(),
        '/menupage':(context) => const MenuPage(),
        '/loginorregis':(context)=> const LoginOrRegis(),
        '/forgotpwpage' :(context)=> const ForgotPwPage(),
        '/verifypage' :(context)=> const VerifyPw(),
        '/homepage' :(context)=> const HomePage(admin: true,),
      }
    );
  }
}