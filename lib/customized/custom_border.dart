import 'package:flutter/material.dart';

import '../theme_color.dart';

class CustomTicketBorder extends StatelessWidget {
  final color = ThemeColors.PRIMARY_COLOR.withOpacity(0.5);
  final int lines;

  CustomTicketBorder({Key? key, required this.lines}) : super(key: key);
  List<Widget> _buildLines() {
    return List.generate(
      lines,
      (index) => Column(
        children: [
          Container(
            width: 1,
            height: 5,
            color: color,
          ),
          const SizedBox(
            height: 3,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildLines(),
    );
  }
}
