import 'package:ecommerce_app/Login_screen/Login_screen.dart';
import 'package:ecommerce_app/gobal_widgets/custom_input_field.dart';
import 'package:ecommerce_app/gobal_widgets/login_method.dart';
import 'package:ecommerce_app/gobal_widgets/ontap_login.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32,top: 19),
                  child: Text("Create an \naccount",style: GoogleFonts.montserrat(fontSize: 36,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 33,),
                CustomInputField(hinttext: "Username or Email",prefixIcon: Icons.person,),
                SizedBox(height: 31,),
                CustomInputField(hinttext: "Password",prefixIcon: Icons.lock,suffixIcon: Icons.visibility_outlined,),
                SizedBox(height: 31,),
                CustomInputField(hinttext: "ConfirmPassword",prefixIcon: Icons.lock,suffixIcon: Icons.visibility_outlined,),
                SizedBox(height: 19,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 87),
                  child: RichText(text: TextSpan(text: "By clicking the",style: GoogleFonts.montserrat(
                    fontSize: 12,fontWeight: FontWeight.bold,color: colorconst.GREYSH5),
                    children: [
                      TextSpan(text: " Register",style: GoogleFonts.montserrat(
                    fontSize: 12,fontWeight: FontWeight.bold,color: colorconst.PRIMARY)),
                    TextSpan(text: " button, you agree \nto the public offer",style: GoogleFonts.montserrat(
                    fontSize: 12,fontWeight: FontWeight.bold,color: colorconst.GREYSH5))
                    ])),
                ),
                SizedBox(height: 38,),
                OnTapLogin(textin: "Create Account",),
                SizedBox(height: 75,),
                  Center(child: Text("- OR Continue with -",style: GoogleFonts.montserrat(color: colorconst.GRAY6,fontSize: 12,fontWeight: FontWeight.w500),)),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginMethod(imagelogo: imagesConst.GOOGLE,),
                      SizedBox(width: 10,),
                  LoginMethod(imagelogo: imagesConst.APPLE,),
                  SizedBox(width: 10,),
                  LoginMethod(imagelogo: imagesConst.FACEBOOK,)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I Already Have an Account",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: colorconst.GRAY6),),
                        SizedBox(width: 5,),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                          },
                          child: RichText(text: TextSpan(text: "Login",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: colorconst.PRIMARY,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.5,
                          ),)),
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}