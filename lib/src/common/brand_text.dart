import 'package:aanakutty_portfolio/src/common/brand_font_size.dart';
import 'package:flutter/material.dart';

class BrandText extends StatelessWidget {
  final String data;
  final TextStyle? textStyle;
  final String? fontFamily;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? fontColor;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;
  const BrandText({
    super.key,
    required this.data,
    this.textStyle,
    this.fontFamily,
    this.textAlign,
    this.fontSize,
    this.maxLines,
    this.overflow,
    this.fontColor,
    this.decoration,
    this.fontWeight,
  });
  const BrandText.primary({
    super.key,
    required this.data,
    this.fontFamily,
    this.fontSize,
    this.maxLines,
    this.textAlign,
    this.fontColor,
    this.decoration,
    this.fontWeight,
    this.overflow,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.size16,
      color: Colors.amber,
      fontWeight: FontWeight.w400,
    ),
  });
  const BrandText.secondary({
    super.key,
    required this.data,
    this.fontFamily,
    this.textAlign,
    this.fontSize,
    this.maxLines,
    this.fontColor,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.size16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  });
  const BrandText.grey({
    super.key,
    this.fontFamily,
    required this.data,
    this.textAlign,
    this.maxLines,
    this.fontSize,
    this.fontColor,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.size16,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),
  });
  const BrandText.white({
    super.key,
    required this.data,
    this.fontFamily,
    this.textAlign,
    this.maxLines,
    this.fontSize,
    this.fontColor,
    this.overflow,
    this.decoration,
    this.fontWeight,
    this.textStyle = const TextStyle(
      fontSize: BrandFontSize.size16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: textStyle?.copyWith(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: fontColor,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
