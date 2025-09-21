import 'package:flutter/material.dart';
import 'package:namitha_das_v_k/src/common/brand_font_size.dart';
import 'package:namitha_das_v_k/src/common/brand_text.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutWdget extends StatelessWidget {
  const AboutWdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 55,
      right: 160,
      child: Center(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withAlpha(150),
                blurRadius: 3,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BrandText.primary(
                  data: 'ABOUT ME',
                  fontSize: BrandFontSize.size18,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 20),
                BrandText.grey(
                  data:
                      "Experienced in aviation security and customer service with 3 years as a Senior Executive. Skilled in passenger screening, international documentation, profiling, and delivering excellent service in highpressure, fast-paced environments.",
                  fontSize: BrandFontSize.size12,
                  textStyle: GoogleFonts.rubik.call(),
                  fontColor: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
