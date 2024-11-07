import 'package:ecommerce_app/Widgets/Wishlistcard.dart';
import 'package:ecommerce_app/gobal_widgets/CustomInputSearch.dart';
import 'package:ecommerce_app/utlit/color.dart';
import 'package:ecommerce_app/utlit/dummydb.dart';
import 'package:ecommerce_app/utlit/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
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
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 9,
            ),
            Text(
              "Stylish",
              style: GoogleFonts.libreCaslonText(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colorconst.BLUE),
            )
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profile.png"),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomInputSearch(),
            SizedBox(
              height: 16,
            ),
            _firstmethoad(),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: MasonryGridView.builder(
                itemCount: Dummydb.Customacrdinput.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2), itemBuilder: (context, index) => Wishlistcard(
                  image: Dummydb.Customacrdinput[index]["image url"],
                  titel: Dummydb.Customacrdinput[index]["name"],
                  desc: Dummydb.Customacrdinput[index]["desc"],
                  price: Dummydb.Customacrdinput[index]["price"],
                  rating: Dummydb.Customacrdinput[index]["Rateing"],)),
            )
          ],
        ),
      ),
    );
  }

  Padding _firstmethoad() {
    return Padding(
            padding: const EdgeInsets.only(left: 22, right: 21),
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
                      borderRadius: BorderRadius.circular(10),
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
