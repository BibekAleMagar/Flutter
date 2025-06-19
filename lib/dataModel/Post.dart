class Post {
  final int id;
  final String title;
  final int time;
  final String description;
  final List<String> postImages;   // note plural here
  final String profileImage;

  Post({
    required this.id,
    required this.title,
    required this.time,
    required this.description,
    required this.postImages,
    required this.profileImage,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      time: json['time'],
      description: json['description'],
      postImages: List<String>.from(json['postImage']),  // json key is still 'postImage'
      profileImage: json['profileImage'] ?? '',
    );
  }
}
