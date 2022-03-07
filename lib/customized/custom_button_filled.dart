import 'package:flutter/material.dart';

import '../enum.dart';
import '../theme_color.dart';
import 'custom_text.dart';

class CustomButtonFilled extends StatelessWidget {
  const CustomButtonFilled({
    Key? key,
    this.child,
    required this.onTap,
    this.text,
    this.width,
    this.radius,
    this.color,
    this.text_color,
    this.height,
  }) : super(key: key);
  final Widget? child;
  final double? width;
  final Function onTap;
  final double? radius;
  final double? height;
  final String? text;
  final Color? color;
  final Color? text_color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      splashColor: Colors.white,
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width ?? double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
        decoration: BoxDecoration(
          color: color ?? ThemeColors.RED_COLOR,
          borderRadius: BorderRadius.circular(radius ?? 30),
        ),
        child: child ??
            CustomText(
              text!.toUpperCase(),
              textAlign: TextAlign.center,
              size: 14,
              type: FontType.FIRASANS,
              color: text_color ?? Colors.white,
              weight: FontWeight.bold,
            ),
      ),
    );
  }
}
