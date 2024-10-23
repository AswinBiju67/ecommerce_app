import 'package:ecommerce_app/gobal_widgets/CustomInputSearch.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
                  imagesConst.MYLOGO,
                height: 32,
                width: 39,
                fit: BoxFit.fill,),
                SizedBox(width: 9,),
                Text("Stylish",style: GoogleFonts.libreCaslonText(fontSize: 18,fontWeight: FontWeight.bold,color: colorconst.BLUE),)
        ],
      ),
      actions: [CircleAvatar(backgroundImage: AssetImage("assets/images/profile.png"),),
      SizedBox(width: 10,)],),
    body: Padding(
      padding: const EdgeInsets.only(left: 22,right: 22),
      child: Column(
        children: [
          CustomInputSearch(),
          SizedBox(height: 16,),
          _SecondSection()
        ],
      ),
    ),);
  }

  Padding _SecondSection() {
    return Padding(
          padding: const EdgeInsets.only(left: 3,right: 1),
          child: Column(
            children: [
              Row(
                children: [
                  Text("All Featured",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w600,color: colorconst.BLACK),),
                  Spacer(),
                  Container(
                    height: 24,
                    width: 61,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorconst.WHITE
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text("Sort",style: GoogleFonts.montserrat(fontSize: 12,color: colorconst.BLACK),),
                          Icon(Icons.swap_vert,color: colorconst.BLACK2,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Container(
                    height: 24,
                    width: 61,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colorconst.WHITE
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text("Filter",style: GoogleFonts.montserrat(fontSize: 12,color: colorconst.BLACK),),
                          Icon(Icons.filter_alt_outlined,color: colorconst.BLACK2,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(children: [
                
              ],)
            ],
          ),
        );
  }
}

