import 'package:ecommerce_app/utlit/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomViewCrad extends StatelessWidget {
  final Color? backgroundcolour;
  final String? titel;
  final IconData? icons;
  final String? ctext;
  const CustomViewCrad({
    super.key,
    this.backgroundcolour,
    this.ctext,
    this.icons,
    this.titel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
            color: backgroundcolour,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 8, bottom: 8, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titel!,
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: colorconst.WHITE),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        icons,
                        color: colorconst.WHITE,
                      ),
                      
                    ],
                  ),
                ],
              ),
              Container(
                height: 29,
                width: 89,
                decoration: BoxDecoration(
                    border: Border.all(color: colorconst.WHITE),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "View All",
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: colorconst.WHITE),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: colorconst.WHITE,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
