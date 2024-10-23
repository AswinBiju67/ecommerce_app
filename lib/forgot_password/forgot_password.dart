import 'package:ecommerce_app/gobal_widgets/custom_input_field.dart';
import 'package:ecommerce_app/gobal_widgets/ontap_login.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32,top: 19),
                child: Text("Forgot \npassword?",style: GoogleFonts.montserrat(fontSize: 36,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 32,),
              CustomInputField(hinttext: "Enter your email address",prefixIcon: Icons.email,),
              SizedBox(height: 26,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 63),
                child: RichText(text: TextSpan(text: "*",style: GoogleFonts.montserrat(color: colorconst.PRIMARY,fontSize: 12,fontWeight: FontWeight.w500),children: [
                  TextSpan(text: " We will send you a message to set or \nreset your new password",style: GoogleFonts.montserrat(color: colorconst.GRAY6,fontSize: 12,fontWeight: FontWeight.w500),)
                ])),
              ),
              SizedBox(height: 26,),
              OnTapLogin(textin: "Submit",),
            ],
          ),
        ),
      ),
    );
  }
}