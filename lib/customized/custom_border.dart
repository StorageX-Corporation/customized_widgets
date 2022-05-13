import 'package:flutter/material.dart';

class CustomTicketBorder extends StatelessWidget {
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
