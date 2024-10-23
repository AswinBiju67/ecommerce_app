import 'package:ecommerce_app/Login_screen/Login_screen.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
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
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
            },
            child: Text("Skip",style: GoogleFonts.montserrat(color: colorconst.BLACK,fontSize: 18,fontWeight: FontWeight.w600),)),
        ),],
      ),
     body: PageView.builder(
      itemCount: imagesConst.IMAGESONBOARD.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              fit: BoxFit.fill,
              width: 400,
              imagesConst.IMAGESONBOARD[index]),
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
            SmoothPageIndicator(
                controller: controller,
                count: imagesConst.IMAGESONBOARD.length,
                effect: const WormEffect(
                  dotHeight: 16,
                  dotWidth: 16,
                  type: WormType.thinUnderground,
                ),
              ),
            Text("Next",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w600,color: colorconst.PRIMARY),),
          ],
        ),
      ),
    );
  }
}