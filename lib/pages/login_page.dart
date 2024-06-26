import "package:flutter/material.dart";

import "package:google_fonts/google_fonts.dart";
import "package:komas_latihan/CostumView/button.dart";
import "package:komas_latihan/CostumView/my_textfield.dart";

class LoginPage extends StatelessWidget {

//email and pw tet controller 
final TextEditingController _emailController = TextEditingController();
final TextEditingController _pwController = TextEditingController();

//tap to register page
final void Function()? onTap;

  LoginPage({
    super.key,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const SizedBox(
              height: 100,
            ),

            //logo
            Image.asset('lib/src/images/login.png', width: 350,),

            const SizedBox(
              height: 20,
            ),


            //welcome back message
            Text(
              "Silahkan Login dulu ",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 16, 
                fontWeight: FontWeight.bold
              ),
            ),
            
            const SizedBox(
              height: 20,
            ),


            //email textfield
            MyTextField(
              hintText: "Email", 
              obsecureText: false,
              controller: _emailController,
              
              ),

               const SizedBox(
              height: 10,
            ),

            //pw textfield
             MyTextField(
              hintText: "Password", 
              obsecureText: true,
              controller: _pwController,
              ),

              const SizedBox(
                height: 40,
              ),

            //login button
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10, horizontal: 120 ),
              child: MyButton(text: "Login", 
              onTap: (){
                Navigator.pushNamed(context, '/homepage');
              }, 
              // onTap: onTap,
              style: GoogleFonts.inter, 
              fontSize: 25, 
              fontWeight: FontWeight.bold, 
              height: 2),
            ),


            //register now
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text(
                "Belum punya akun? ",
                ),

              GestureDetector(
              onTap: onTap,
                child: Text("Daftar sekarang",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
            ),

            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
