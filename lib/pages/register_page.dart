import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:komas_latihan/CostumView/button.dart";
import "package:komas_latihan/CostumView/my_textfield.dart";

class RegisterPage extends StatelessWidget {
  
  //controller
final TextEditingController _emailController = TextEditingController();
final TextEditingController _pwController = TextEditingController();
final TextEditingController _confirmController = TextEditingController();

//tap to register page
final void Function()? onTap;


 RegisterPage({
  super.key,
  this.onTap
 });

 //method register
 void register(){

 }

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
            Image.asset('lib/src/images/register.png', width: 350,),

            const SizedBox(
              height: 20,
            ),


            //welcome back message
            Text(
              "Mohon isi data dengan benar ",
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
              height: 10,
            ),

            //confirm pw textfield
             MyTextField(
              hintText: "Konfirmasi Password", 
              obsecureText: true,
              controller: _confirmController,
              ),


              const SizedBox(
                height: 40,
              ),

            //regis button
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10, horizontal: 120 ),
              child: MyButton(text: "Register", 
              onTap: (){
                Navigator.pushNamed(context, '/loginpage');
              }, 
              // onTap: onTap,
              style: GoogleFonts.inter, 
              fontSize: 25, 
              fontWeight: FontWeight.bold, 
              height: 2),
            ),


            //login now
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text(
                "sudah punya akun? ",
                
                
                ),

              GestureDetector(
                onTap: onTap,
                child: Text("Masuk di sini",
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