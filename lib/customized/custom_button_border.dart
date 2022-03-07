import 'package:flutter/material.dart';

import '../enum.dart';
import '../theme_color.dart';
import 'custom_text.dart';

class CustomButtonFilledBorder extends StatelessWidget {
  const CustomButtonFilledBorder({
    Key? key,
    this.child,
    required this.onTap,
    this.text,
    this.width,
    this.radius,
    this.color,
    this.text_color,
  }) : super(key: key);
  final Widget? child;
  final double? width;
  final Function onTap;
  final double? radius;
  final String? text;
  final Color? color;
  final Color? text_color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 30),
      splashColor: Colors.white,
      onTap: () {
        onTap();
      },
      child: Container(
        width: width ?? double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 30),
            border: Border.all(
              color: color ?? ThemeColors.PRIMARY_COLOR,
            )),
        child: child ??
            CustomText(
              text,
              textAlign: TextAlign.center,
              size: 14,
              type: FontType.FIRASANS,
              color: text_color ?? ThemeColors.PRIMARY_COLOR,
              weight: FontWeight.bold,
            ),
      ),
    );
  }
}
