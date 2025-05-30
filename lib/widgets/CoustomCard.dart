import 'package:flutter/material.dart';

class CoustomCard extends StatelessWidget {
  Color color;
  EdgeInsetsGeometry margin;
  CoustomCard({super.key, required this.color, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(12)),
            margin: margin,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              left: 20,
              bottom: 20,
              child: Container(
                padding: EdgeInsets.only(right: 20),
                width: MediaQuery.of(context).size.width / 3,
                child: Text(
                  "Ashish Gautam Gautam Gautam ",
                  maxLines: 2,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
