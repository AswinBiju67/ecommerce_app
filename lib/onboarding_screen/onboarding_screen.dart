import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageView(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              fit: BoxFit.fill,
              width: 400,
              "assets/images/fashion shop-rafiki 1.png"),
              Text("Choose Products",style: GoogleFonts.montserrat(fontWeight: FontWeight.w900,fontSize: 24),),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                style: GoogleFonts.montserrat(fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xffA8A8A9),),
                textAlign: TextAlign.center,),
              )
          ],
        ),
      ),
     ],),
    );
  }
}