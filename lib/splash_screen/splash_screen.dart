import 'dart:async';

import 'package:ecommerce_app/onboarding_screen/onboarding_screen.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
        ),
   ),
);
}
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagesConst.MYLOGO,
            height: 125,
            width: 130,
            fit: BoxFit.fill,),
            SizedBox(width: 10,),
            Text("Stylish",style: GoogleFonts.libreCaslonText(fontSize: 40,fontWeight: FontWeight.bold,color: colorconst.PRIMARY),)
          ],
        )
     ),
);
}
}