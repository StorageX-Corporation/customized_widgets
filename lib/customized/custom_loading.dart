import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    Key? key,
    this.size,
    this.color,
  }) : super(key: key);
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isAndroid
          ? SizedBox(
              height: size ?? 15,
              width: size,
              child: Center(
                  child: CircularProgressIndicator(
                color: color,
              )),
            )
          : CupertinoActivityIndicator(color: color),
    );
  }
}
