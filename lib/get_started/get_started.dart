import 'package:ecommerce_app/bottomnavibar/bottomnavibar.dart';
import 'package:ecommerce_app/gobal_widgets/ontap_login.dart';
import 'package:ecommerce_app/home_screen/home_screen.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
            imagesConst.GETSTART))
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Container(
          padding: EdgeInsets.only(left: 55,right: 56,bottom: 34,),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                colorconst.BLACK.withOpacity(0),
                colorconst.BLACK.withOpacity(0.5),
                colorconst.BLACK.withOpacity(0.5),
                colorconst.BLACK.withOpacity(0.5),
              ],)
            ),
            width: double.infinity,
            child: Column(
              children: [
              Text("You want \nAuthentic, here \nyou go!",
              style: GoogleFonts.montserrat(fontSize: 34,fontWeight: FontWeight.w600,color: colorconst.WHITE),
              textAlign: TextAlign.center,),
              SizedBox(height: 14,),
              Text("Find it here, buy it now!",
              style: GoogleFonts.montserrat(fontSize: 14,color: colorconst.WHITE),
              ),
              SizedBox(height: 44,),
              OnTapLogin(textin: "Get Started",
              OnButtonPress: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Bottomnavibar(),));
              },)
            ],),
          )

        ],)
      ),
    );
  }
}