import 'package:aanakutty_portfolio/src/common/brand_font_size.dart';
import 'package:aanakutty_portfolio/src/common/brand_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 160,
      top: 0,
      bottom: 0,
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BrandText.secondary(data: 'Hi,', fontSize: BrandFontSize.size18),
            BrandText.secondary(
              data: "I'm Namitha",
              fontSize: BrandFontSize.size36,
              textStyle: GoogleFonts.rubik.call(),
            ),
            BrandText.grey(
              data: "Trusted Aviation Security Executive",
              fontSize: BrandFontSize.size10,
            ),
          ],
        ),
      ),
    );
  }
}
