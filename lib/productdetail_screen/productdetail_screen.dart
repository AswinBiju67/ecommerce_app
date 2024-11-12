import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:ecommerce_app/productdetail_screen/widgets/custom_icon_card.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductdetailScreen extends StatefulWidget {
  const ProductdetailScreen({super.key});

  @override
  State<ProductdetailScreen> createState() => _ProductdetailScreenState();
}

class _ProductdetailScreenState extends State<ProductdetailScreen> {
  final imageController = PageController();
  dynamic selectedIndex = 1;
  dynamic size = "7UK";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 235,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _imagesection(),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Center(
              child: SmoothPageIndicator(
                  controller: imageController,
                  count: 6,
                  effect: ScrollingDotsEffect(
                    activeDotScale: 1.4,
                    maxVisibleDots: 5,
                    radius: 10,
                    spacing: 8,
                    dotHeight: 9,
                    dotWidth: 9,
                  )),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                size="Size: ${size = selectedIndex+1}UK",
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: List.generate(
                    10,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          height: 32,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                  color: colorconst.PRIMARY, width: 1.5),
                              color: selectedIndex == index
                                  ? colorconst.PRIMARY
                                  : colorconst.WHITE),
                          child: Center(
                              child: Text(
                            "${index + 1} UK",
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: selectedIndex == index
                                    ? colorconst.WHITE
                                    : colorconst.PRIMARY),
                          )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            _Productdetails(),
            SizedBox(
              height: 12,
            ),
            _thirdsection(),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CustomIconCard(text: "Go to Cart",
                  icon: Icons.shopping_cart_outlined,
                  color1:  Color(0xff3F92FF),
                  color2: Color(0xff0B3689),),
                  SizedBox(width: 12,),
                  CustomIconCard(text: "Buy Now",
                  icon: Icons.touch_app_outlined,
                  color1:  Color(0xff3F92FF),
                  color2: Color(0xff0B3689),),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: colorconst.PRIMARY4,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 26, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery in ",
                        style: GoogleFonts.montserrat(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "1 within Hour ",
                        style: GoogleFonts.montserrat(
                            fontSize: 21, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  height: 48,
                  width: 182,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 26, top: 5),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 12, top: 8, bottom: 8),
                      child: Row(
                        children: [
                          Icon(Icons.visibility),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Delivery in ",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 48,
                  width: 182,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 26, top: 5),
                    child: Row(
                      children: [
                        Icon(Icons.compare),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Add to Compare",
                          style: GoogleFonts.montserrat(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Similar To",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            _firstmethoad(),
            SizedBox(height: 18,),
            _Finalsection()
          ],
        ),
      ),
    );
  }

  Padding _Finalsection() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                    height: 245,
                    width: 164,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(height: 136, fit: BoxFit.cover, imagesConst.LIMAGE),
                        SizedBox(height: 4,),
                        Text(
                          "NIke Sneakers",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "Nike Air Jordan Retro 1 Low Mystic Black",
                          style: GoogleFonts.montserrat(fontSize: 10),
                        ),
                        SizedBox(height: 4,),
                        Text(
                          "₹1,900",
                          style: GoogleFonts.montserrat(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4,),
                        Row(
                          children: [
                            RatingBar.readOnly(
                              filledIcon: Icons.star,
                              emptyIcon: Icons.star_border,
                              initialRating: 4,
                              maxRating: 5,
                              size: 15,
                            ),
                            SizedBox(width: 4,),
                            Text("46,890",style: GoogleFonts.montserrat(fontSize: 10),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  height: 245,
                  width: 164,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(height: 136, fit: BoxFit.cover, imagesConst.L2),
                      SizedBox(height: 4,),
                      Text(
                        "NIke Sneakers",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "Mid Peach Mocha Shoes For Man White Black Pink S...",
                        style: GoogleFonts.montserrat(fontSize: 10),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        "₹1,900",
                        style: GoogleFonts.montserrat(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 4,),
                      Row(
                        children: [
                          RatingBar.readOnly(
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            initialRating: 4,
                            maxRating: 5,
                            size: 15,
                          ),
                          SizedBox(width: 4,),
                          Text("2,56,890",style: GoogleFonts.montserrat(fontSize: 10),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }

  Padding _thirdsection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            height: 24,
            width: 97,
            decoration: BoxDecoration(
                border: Border.all(color: colorconst.BLACK),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.place,
                    size: 10,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Nearest Store",
                    style: GoogleFonts.montserrat(
                        fontSize: 10, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 24,
            width: 46,
            decoration: BoxDecoration(
                border: Border.all(color: colorconst.BLACK),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock,
                    size: 10,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "VIP",
                    style: GoogleFonts.montserrat(
                        fontSize: 10, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 24,
            width: 96,
            decoration: BoxDecoration(
                border: Border.all(color: colorconst.BLACK),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.recycling_outlined,
                    size: 10,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Return policy",
                    style: GoogleFonts.montserrat(
                        fontSize: 10, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding _Productdetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "NIke Sneakers",
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Vision Alta Men’s Shoes Size (All Colours)",
            style: GoogleFonts.montserrat(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              RatingBar.readOnly(
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                initialRating: 4,
                maxRating: 5,
                size: 15,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "56,890",
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Text(
                "₹2,999",
                style: GoogleFonts.montserrat(
                    fontSize: 14, decoration: TextDecoration.lineThrough),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "₹1,500",
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "₹1,500",
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: colorconst.PRIMARY2),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Product Details",
            style: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Perhaps the most iconic sneaker of all-time, this original Chicago? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More",
            style: GoogleFonts.montserrat(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Stack _imagesection() {
    return Stack(
      children: [
        PageView.builder(
          controller: imageController,
          itemCount: 6,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imagesConst.DETAIL))),
          ),
        ),
        Positioned(
            top: 0,
            bottom: 0,
            left: 8,
            child: InkWell(
              onTap: () {
                imageController.previousPage(
                    duration: Duration(milliseconds: 800), curve: Curves.ease);
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: colorconst.WHITE.withOpacity(.3),
                child: Icon(Icons.arrow_back_ios_new_outlined),
              ),
            )),
        Positioned(
            top: 0,
            bottom: 0,
            right: 8,
            child: InkWell(
              onTap: () {
                imageController.nextPage(
                    duration: Duration(milliseconds: 800), curve: Curves.ease);
              },
              child: CircleAvatar(
                radius: 25,
                backgroundColor: colorconst.WHITE.withOpacity(.3),
                child: Icon(Icons.keyboard_arrow_right_outlined),
              ),
            ))
      ],
    );
  }

  Padding _firstmethoad() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            "52,082+ Iteams ",
            style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: colorconst.BLACK),
          ),
          Spacer(),
          Container(
            height: 24,
            width: 61,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: colorconst.WHITE),
            child: Center(
              child: Row(
                children: [
                  Text(
                    "Sort",
                    style: GoogleFonts.montserrat(
                        fontSize: 12, color: colorconst.BLACK),
                  ),
                  Icon(
                    Icons.swap_vert,
                    color: colorconst.BLACK2,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            height: 24,
            width: 61,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: colorconst.WHITE),
            child: Center(
              child: Row(
                children: [
                  Text(
                    "Filter",
                    style: GoogleFonts.montserrat(
                        fontSize: 12, color: colorconst.BLACK),
                  ),
                  Icon(
                    Icons.filter_alt_outlined,
                    color: colorconst.BLACK2,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
