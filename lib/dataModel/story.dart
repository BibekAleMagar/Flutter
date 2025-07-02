class Story {
  final int id;
  final String name;
  final String storyImage;
  final String profileImage;

  Story({
    required this.id,
    required this.name,
    required this.storyImage,
    required this.profileImage,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: json['id'],
      name: json['name'],
      storyImage: json['storyImage'],
      profileImage: json['profileImage'],
    );
  }
}
