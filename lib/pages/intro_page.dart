import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:komas_latihan/CostumView/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 40),

            //nameApk
            Text(
              "Alfizah Kos",
              style: GoogleFonts.inter(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            const SizedBox(
              height: 30,
            ),

            //icon
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('lib/src/images/login.png'),
            ),

            //title
            Text(
              "Kenyamanan, Keamanan, dan Kekeluargaan",
              style: GoogleFonts.inter(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                // flex:CrossAxisAlignment.center
              ),
            ),

            //subtitle
            Text(
              "Semua dimulai di sini",
              style: GoogleFonts.inter(fontSize: 20, color: Colors.white),
            ),

                        const SizedBox(
              height: 70,
            ),
            
            //getStart
            // Padding(padding: 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child:  MyButton(text: 
              "Next",
              style: GoogleFonts.inter,
              fontSize: 25,
              height: 2,
              fontWeight: FontWeight.bold,
              // icon: const Icon (Icons.arrow_forward, color: Colors.white,),
              // const Icon(Icons.arrow_forward, color: Colors.white),
              onTap: (){
                //Next to Login
                Navigator.pushNamed(context, '/loginpage');
              } ,
              ),
            )
          // )

          ],
        ),
      ),
    );
  }
}
