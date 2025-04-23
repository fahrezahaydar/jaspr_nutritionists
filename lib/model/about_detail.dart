class AboutDetails {
  final String title;
  final List<String> paragraph;

  AboutDetails({required this.title, required this.paragraph});

  factory AboutDetails.fromMap(Map<String, dynamic> data) {
    return AboutDetails(
      title: data["title"] ?? "",
      paragraph: data["paragraph"] ?? [],
    );
  }
}
