import 'package:customized_widgets/custom_local_function.dart';
import 'package:flutter/material.dart';

import '../enum.dart';

class CustomText extends StatelessWidget {
  final double? size;
  final FontWeight? weight;
  final FontStyle? style;
  final Color? color;
  final String? text;
  final double? spacing;
  final int? maxLines;
  final double? letterSpacing;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextStyle? textStyle;
  final FontType? type;
  const CustomText(this.text,
      {this.size,
      this.type,
      this.overflow,
      this.weight,
      this.style,
      this.color,
      this.spacing,
      this.maxLines,
      this.textAlign,
      this.letterSpacing,
      this.softWrap,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: softWrap ?? true,
      style: CustomLocalFunction.fontStyle(type,
          letterSpacing: letterSpacing ?? 0,
          size: size,
          weight: weight,
          textStyle: textStyle,
          spacing: spacing,
          style: style,
          color: color),
    );
  }
}
