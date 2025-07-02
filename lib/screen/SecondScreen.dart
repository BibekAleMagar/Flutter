import 'package:flutter/material.dart';
import 'package:our_app/dataModel/story.dart';

class SecondScreen extends StatefulWidget {
  final Story story;
  const SecondScreen({super.key, required this.story});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Color bgColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: InkWell(
        onTap: () {
          setState(() {
            bgColor = Colors.yellow;
          });
        },
        onDoubleTap: (){
          setState(() {
            bgColor = Colors.orange;
          });
        },
        onLongPress: () {
          setState(() {
            bgColor = Colors.white;
          });
        },
        child: const SizedBox.expand(),
      ),
    );
  }
}
