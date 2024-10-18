import 'package:ecommerce_app/Login_screen/Login_screen.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List imagesonboard=["assets/images/fashion shop-rafiki 1.png",
"assets/images/Shopping bag-rafiki 1.png",
"assets/images/Sales consulting-pana 1.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            children: [
              Text("1",style: GoogleFonts.montserrat(color: colorconst.BLACK,fontSize: 18,fontWeight: FontWeight.w600),),
              Text("/3",style: GoogleFonts.montserrat(color: colorconst.GREYSH3,fontSize: 18,fontWeight: FontWeight.w600),),
            ],
          ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 17),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
            },
            child: Text("Skip",style: GoogleFonts.montserrat(color: colorconst.BLACK,fontSize: 18,fontWeight: FontWeight.w600),)),
        ),],
      ),
     body: PageView.builder(
      itemCount: imagesonboard.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              fit: BoxFit.fill,
              width: 400,
              imagesonboard[index]),
              Text("Choose Products",style: GoogleFonts.montserrat(fontWeight: FontWeight.w900,fontSize: 24,color: colorconst.BLACK),),
              Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w600,fontSize: 14,color: colorconst.GREYSH1,),
              textAlign: TextAlign.center,)
          ],
        ),
      ),),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 19,bottom: 24,left: 19),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Prev",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w600,color: colorconst.GREYSH2),),
            CircleAvatar(radius: 15,),
            Text("Next",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w600,color: colorconst.PRIMARY),),
          ],
        ),
      ),
    );
  }
}