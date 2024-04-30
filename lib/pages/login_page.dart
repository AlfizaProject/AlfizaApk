import "package:flutter/material.dart";
// import "package:google_fonts/google_fonts.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
        //logo
    
        Container(
          child: Image.asset('lib/src/images/login.png')
          ),

        
        
        ],


        ),
      ),
    );
  }
}
