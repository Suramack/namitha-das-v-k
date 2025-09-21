import 'package:aanakutty_portfolio/app_config.dart';
import 'package:flutter/material.dart';
import 'package:aanakutty_portfolio/src/common/brand_font_size.dart';
import 'package:aanakutty_portfolio/src/common/brand_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

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
                data: 'CONTACT',
                fontSize: BrandFontSize.size18,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              BrandText.secondary(
                data: "NAMITHA DAS V K",
                fontSize: BrandFontSize.size16,
                textStyle: GoogleFonts.rubik.call(),
              ),
              BrandText.grey(
                data: "Senior Executive - AOCS",
                fontSize: BrandFontSize.size16,
                textStyle: GoogleFonts.rubik.call(),
              ),
              InkWell(
                onTap: () async {
                  final Uri emailUri = Uri(
                    scheme: 'mailto',
                    path: emailId,
                    query:
                        "subject=I'm Interested with your profile&body=Hi Namitha,\n",
                  );

                  if (await canLaunchUrl(emailUri)) {
                    await launchUrl(emailUri);
                  } else {
                    throw 'Could not launch $emailUri';
                  }
                },
                child: BrandText.secondary(
                  data: "namithadasvk@gmail.com",
                  fontSize: BrandFontSize.size16,
                  textStyle: GoogleFonts.rubik.call(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
