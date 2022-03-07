import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme_color.dart';
import 'custom_text.dart';

CupertinoButton customCupertinoButton(BuildContext context,
    {required String child, Function? onPressed, Color? color}) {
  List<String> redList = [
    'CANCEL',
    'NO',
  ];

  return CupertinoButton(
      child: CustomText(
        child.toUpperCase(),
        weight: FontWeight.bold,
        color: redList.contains(child.toUpperCase())
            ? Colors.red
            : ThemeColors.IOS_BUTTON_COLOR,
      ),
      onPressed: onPressed as void Function()?);
}
