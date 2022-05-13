import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        color: redList.contains(child.toUpperCase()) ? Colors.red : Colors.blue,
      ),
      onPressed: onPressed as void Function()?);
}
