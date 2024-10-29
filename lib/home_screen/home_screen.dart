import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/gobal_widgets/CustomInputSearch.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:ecommerce_app/utlit/dummydb.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex=0;
  final controller = PageController(viewportFraction: 1, keepPage: true);
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
    body: Column(
      children: [
        CustomInputSearch(),
        SizedBox(height: 16,),
        _SecondSection(),
        _thirdsection(),
       AnimatedSmoothIndicator(    
   activeIndex: activeIndex,    
   count: 3,    
   effect: WormEffect(), 
)
      ],
    ),);
  }

  CarouselSlider _thirdsection() {
    return CarouselSlider.builder(
    itemCount: 3,
    options: CarouselOptions(
      height: 189,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {
          activeIndex=index;
          setState(() {
            
          });
        },
        scrollDirection: Axis.horizontal,
     ),
    itemBuilder: 
    (context, index, realIndex) => 
    
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage("assets/images/Rectangle 48.png"))
  ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 14,top: 30),
          child: Container(
            height: 136,
            width: 109,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("50-40% OFF",style: GoogleFonts.montserrat(
                  fontSize: 20,fontWeight: FontWeight.bold,color: colorconst.WHITE
                ),),
                SizedBox(height: 8,),
                Text("Now in (product)\nAll colours",style: GoogleFonts.montserrat(
                  fontSize: 12,color: colorconst.WHITE
                ),),
                SizedBox(height: 12,),
                Container(
                  height: 32,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: colorconst.WHITE),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Shop Now",style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: colorconst.WHITE),),
                        Icon(Icons.arrow_right_alt,color: colorconst.WHITE,)
                      ],
                    ),
                  ),),
              ],
            ),
          ),
        )),
      ),
    ),);
  }

  Column _SecondSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 22,right: 21),
          child: Row(
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
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24,top: 24),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: List.generate(Dummydb.featurscreen.length, (index) {
                    var Feature=Dummydb.featurscreen[index];
                   return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Column(
                    children: [
                      CircleAvatar(radius: 32,
                      backgroundImage: AssetImage(Feature["image url"]),),
                      SizedBox(height: 4,),
                      Text(Feature["name"],style: GoogleFonts.montserrat(fontSize: 10,
                      color: colorconst.TEXTCOLORMAIN),)
                    ],
                  ),
                ); 
                  },)),
              ],
            ),
          ),
        )
      ],
    );
  }
}

