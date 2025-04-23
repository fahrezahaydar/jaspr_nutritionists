class Story {
  final String title;
  final String text;
  final String date;
  final String image;

  Story({
    required this.title,
    required this.text,
    required this.date,
    required this.image,
  });

  factory Story.fromMap(Map<String, dynamic> map) {
    return Story(
      title: map['title'] ?? '',
      text: map['text'] ?? '',
      date: map['date'] ?? '',
      image: map['image'] ?? '',
    );
  }
}
