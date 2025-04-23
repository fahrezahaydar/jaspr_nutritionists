class Header {
  final String title;
  final String subtitle;
  final String body;

  Header({
    required this.title,
    required this.subtitle,
    required this.body,
  });

  static fromMap(Map<String, String> data) {
    return Header(
      title: data["title"] ?? "",
      subtitle: data["subtitle"] ?? "",
      body: data["body"] ?? "",
    );
  }
}
