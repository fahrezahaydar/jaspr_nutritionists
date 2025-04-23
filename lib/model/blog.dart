class BlogData {
  final String title;
  final String subtitle;
  final String category;
  final String image;

  BlogData({required this.title, required this.subtitle, required this.category, required this.image});

  factory BlogData.fromMap(Map<String, String> data) {
    return BlogData(
      title: data["title"] ?? "",
      subtitle: data["subtitle"] ?? "",
      category: data["category"] ?? "",
      image: "images/png/${data["image"]}.png",
    );
  }
}
