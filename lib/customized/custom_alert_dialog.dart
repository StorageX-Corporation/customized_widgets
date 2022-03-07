import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog(
      {Key? key,
      this.content,
      this.title,
      this.actions,
      this.iOSTitle,
      this.iOSContent,
      this.iOSActions})
      : super(key: key);
  final Widget? content;
  final Widget? title;
  final List<Widget>? actions;

  final Widget? iOSTitle;
  final Widget? iOSContent;
  final List<Widget>? iOSActions;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            // contentPadding: EdgeInsets.all(),
            title: title,
            content: content,
            actions: actions,
          )
        : CupertinoAlertDialog(
            title: iOSTitle, content: iOSContent, actions: iOSActions!);
  }
}
