import 'package:flutter/material.dart';

class Fbfeed extends StatelessWidget {
  const Fbfeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.orange, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Texas College of Management and IT"),
                        Row(
                          children: [
                            Text("12h ."),
                            Icon(
                              Icons.language,
                              size: 14,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [Icon(Icons.more_horiz), Icon(Icons.close)],
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Text(
                    "Today is Friday. We will have fun today in Class. Today is Friday. We will have fun today in Class Today is Friday. We will have fun today in Class "),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blueAccent,
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blueGrey,
              )
            ],
          )
        ],
      ),
    );
  }
}
