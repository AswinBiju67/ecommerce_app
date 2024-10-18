import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome",style: GoogleFonts.montserrat(fontSize: 36,fontWeight: FontWeight.bold),),
              Text("Back",style: GoogleFonts.montserrat(fontSize: 36,fontWeight: FontWeight.bold),),
              SizedBox(height: 36,),
              Center(
                child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffA8A8A9)
                ),
                height: 55,
                width: 317,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.person,color: Color(0xff676767),),
                      SizedBox(width: 3,),
                      Text("Username or Email",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff676767)),)
                    ],
                  ),
                ),),
              ),
              SizedBox(height: 31,),
              Center(
                child: Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffA8A8A9)
                ),
                height: 55,
                width: 317,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.lock,color: Color(0xff676767),),
                      SizedBox(width: 3,),
                      Text("Password",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w500,color: Color(0xff676767)),)
                    ],
                  ),
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}