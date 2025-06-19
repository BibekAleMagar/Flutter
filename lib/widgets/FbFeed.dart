import 'package:flutter/material.dart';
import 'package:our_app/dataModel/Post.dart';

class Fbfeed extends StatelessWidget {
  final Post post;

  const Fbfeed({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // ✅ Profile Image with fallback
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: post.profileImage.isNotEmpty
                          ? NetworkImage(post.profileImage)
                          : null,
                      child: post.profileImage.isEmpty
                          ? const Icon(Icons.person)
                          : null,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Text("${post.time}h · "),
                            const Icon(Icons.language, size: 14),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.more_horiz),
                    SizedBox(width: 8),
                    Icon(Icons.close),
                  ],
                )
              ],
            ),
          ),

          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(post.description),
          ),

          const SizedBox(height: 12),

          // Post Images
          ...post.postImages.map((imgUrl) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Image.network(
              imgUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey[300],
                child: const Center(child: Icon(Icons.broken_image, size: 50)),
              ),
            ),
          )).toList(),

          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
