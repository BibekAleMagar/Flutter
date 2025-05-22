import 'package:flutter/material.dart';

class Coustomcard extends StatelessWidget {
  Color colors;
  EdgeInsetsGeometry margin;
  Coustomcard({super.key, required this.colors, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        margin: margin,
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
