class StoryData {
  final String title;
  final String text;
  final String date;
  final String image;

  StoryData({
    required this.title,
    required this.text,
    required this.date,
    required this.image,
  });

  factory StoryData.fromMap(Map<String, dynamic> map) {
    return StoryData(
      title: map['title'] ?? '',
      text: map['text'] ?? '',
      date: map['date'] ?? '',
      image: map['image'] ?? '',
    );
  }
}
