import 'package:flutter/material.dart';
import 'package:our_app/dataModel/story.dart';
import 'package:our_app/screen/SecondScreen.dart';

class CoustomCard extends StatelessWidget {
  final Color color;
  final Story story;
  final EdgeInsetsGeometry margin;

  CoustomCard({
    super.key,
    required this.color,
    required this.margin,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to SecondScreen and pass the story data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SecondScreen(story: story),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
        child: Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              margin: margin,
              child: Image.network(
                story.storyImage,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error);
                },
              ),
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
                child: Image.network(
                  story.profileImage,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error);
                  },
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
                  story.name,
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
