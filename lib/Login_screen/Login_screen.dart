import 'package:ecommerce_app/create_account/create_account.dart';
import 'package:ecommerce_app/forgot_password/forgot_password.dart';
import 'package:ecommerce_app/get_started/get_started.dart';
import 'package:ecommerce_app/gobal_widgets/custom_input_field.dart';
import 'package:ecommerce_app/gobal_widgets/login_method.dart';
import 'package:ecommerce_app/gobal_widgets/ontap_login.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32,top: 19),
                  child: Text("Welcome \nBack!",style: GoogleFonts.montserrat(fontSize: 36,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 36,),
                CustomInputField(hinttext: "Username or Email",
                prefixIcon: Icons.person,),
                SizedBox(height: 31,),
                CustomInputField(
                  hinttext: "Password",prefixIcon: Icons.lock,suffixIcon: Icons.visibility_outlined,
                ),
                SizedBox(height: 9,),
                Padding(
                  padding: const EdgeInsets.only(right: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
                        },
                        child: Text("Forgot Password?",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.bold,color: colorconst.PRIMARY),)),
                    ],
                  ),
                ),
                SizedBox(height: 76,),
                OnTapLogin(textin: "Login",
                OnButtonPress: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => GetStarted(),), (route) => false,);
                },),
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
                      Text("Create An Account",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: colorconst.GRAY6),),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CreateAccount(),));
                        },
                        child: RichText(text: TextSpan(text: "Sign Up",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w400,color: colorconst.PRIMARY,
                        decoration: TextDecoration.underline,
                        decorationThickness: 2,
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

