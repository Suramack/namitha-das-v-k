import 'package:flutter/material.dart';
import 'package:aanakutty_portfolio/src/common/brand_font_size.dart';
import 'package:aanakutty_portfolio/src/common/brand_text.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 55,
      right: 160,
      child: Container(
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
                data: 'SKILLS',
                fontSize: BrandFontSize.size18,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              BrandText.secondary(
                data: "• Excellent Customer Service",
                fontSize: BrandFontSize.size16,
                textStyle: GoogleFonts.rubik.call(),
              ),
              BrandText.secondary(
                data: "• Customer-Focused Communication",
                fontSize: BrandFontSize.size16,
                textStyle: GoogleFonts.rubik.call(),
              ),
              BrandText.secondary(
                data: "• Emergency response and safety protocol",
                fontSize: BrandFontSize.size16,
                textStyle: GoogleFonts.rubik.call(),
              ),
              BrandText.secondary(
                data: "• Efficient Problem Solving Team Collaboration",
                fontSize: BrandFontSize.size16,
                textStyle: GoogleFonts.rubik.call(),
              ),
              BrandText.secondary(
                data: "• Time Management and Organization",
                fontSize: BrandFontSize.size16,
                textStyle: GoogleFonts.rubik.call(),
              ),
              BrandText.secondary(
                data: "• Grooming and professional appearance",
                fontSize: BrandFontSize.size16,
                textStyle: GoogleFonts.rubik.call(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
