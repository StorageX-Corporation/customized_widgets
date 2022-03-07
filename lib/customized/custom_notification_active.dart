import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomNotificationActive extends StatelessWidget {
  const CustomNotificationActive(
      {Key? key,
      required this.child,
      this.activated = true,
      this.numeric = false,
      this.numericValue})
      : assert(!numeric || numericValue != null,
            'Please provide a number value when numeric is true\n');

  final Widget child;
  final bool activated;
  final bool numeric;
  final int? numericValue;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (activated)
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              alignment: Alignment.center,
              height: numeric ? 18 : 12,
              width: numeric ? 18 : 12,
              child: numeric
                  ? CustomText(
                      numericValue! > 99 ? '99+' : '$numericValue',
                      color: Colors.white,
                      size: 8,
                      weight: FontWeight.bold,
                    )
                  : const SizedBox(),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
      ],
    );
  }
}
