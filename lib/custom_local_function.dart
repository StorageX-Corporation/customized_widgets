// ignore_for_file: avoid_print

import 'package:customized_widgets/theme_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'enum.dart';

show(Object data) => kDebugMode
    ? print(data.toString())
    : print('----------------------Release Mode----------------------');

class CustomLocalFunction {
  static Future<void> push(BuildContext context,
      {required Widget screen}) async {
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => screen));
  }

  static TextStyle customTextStyle(
          {Color? color,
          double? spacing,
          double? height,
          double? size,
          FontType? type,
          FontWeight? weight,
          TextDecoration? underline}) =>
      fontStyle(
        type,
        weight: weight,
        color: color ?? Colors.grey,
        size: size ?? 14,
        spacing: height,
        letterSpacing: spacing ?? 0,
        underline: underline,
      );

  static TextStyle fontStyle(FontType? type,
      {double? size,
      FontWeight? weight,
      FontStyle? style,
      Color? color,
      double? spacing,
      double? letterSpacing,
      TextDecoration? underline,
      TextStyle? textStyle}) {
    switch (type) {
      case FontType.FIRACODE:
        return GoogleFonts.firaCode(
            letterSpacing: letterSpacing ?? 0,
            fontSize: size,
            fontWeight: weight,
            textStyle: textStyle,
            height: spacing,
            fontStyle: style,
            decoration: underline,
            color: color ?? ThemeColors.PRIMARY_COLOR);
      case FontType.FIRASANS:
        return GoogleFonts.firaSans(
            letterSpacing: letterSpacing ?? 0,
            fontSize: size,
            fontWeight: weight,
            textStyle: textStyle,
            height: spacing,
            fontStyle: style,
            decoration: underline,
            color: color ?? ThemeColors.PRIMARY_COLOR);
      case FontType.ROBOTO:
        return GoogleFonts.roboto(
            letterSpacing: letterSpacing ?? 0,
            fontSize: size,
            fontWeight: weight,
            textStyle: textStyle,
            height: spacing,
            decoration: underline,
            fontStyle: style,
            color: color ?? ThemeColors.PRIMARY_COLOR);
        break;

      default:
        return GoogleFonts.quicksand(
            letterSpacing: letterSpacing ?? 0,
            fontSize: size,
            fontWeight: weight,
            textStyle: textStyle,
            height: spacing,
            decoration: underline,
            fontStyle: style,
            color: color ?? ThemeColors.PRIMARY_COLOR);
        break;
    }
  }
}
