class Content {
  final String title;
  final String subtitle;
  final String? body;
  final String? media;

  Content({
    required this.title,
    required this.subtitle,
    required this.body,
    required this.media,
  });

  static List<Content> fromMap(List<Map<String, String>> listData) {
    return listData.map((data) {
      String media = "";
      if (data["icon"]!.isNotEmpty) {
        media = "images/svg/${data["icon"]!}.svg";
      } else if (data["image"]!.isNotEmpty) {
        media = "images/png/${data["icon"]!}.png";
      }
      return Content(
        title: data["title"] ?? "",
        subtitle: data["subtitle"] ?? "",
        body: data["body"] ?? data["description"] ?? "",
        media: media,
      );
    }).toList();
  }
}

class BlogContent {
  final String title;
  final String subtitle;
  final String body;
  final String media;
  final String person;
  final String date;
  final String avatar;

  BlogContent({
    required this.title,
    required this.subtitle,
    required this.body,
    required this.media,
    required this.person,
    required this.date,
    required this.avatar,
  });

  static List<BlogContent> fromMap(List<Map<String, Object>> listData) {
    return listData.map((data) {
      Map details = data["detail"] as Map;
      return BlogContent(
        title: data["title"] as String,
        subtitle: data["subtitle"] as String,
        body: data["description"] as String,
        media: "images/png/${data["image"]}.png",
        person: details["name"],
        date: details["subtitle"],
        avatar: details["avatar"],
      );
    }).toList();
  }
}

class TestimonialContent {
  final String name;
  final String testimonial;
  final String avatar;

  TestimonialContent({
    required this.name,
    required this.testimonial,
    required this.avatar,
  });

  static List<TestimonialContent> fromMap(List<Map<String, String>> listData) {
    return listData.map((data) {
      return TestimonialContent(
        name: data["name"] ?? "",
        testimonial: data["testimonial"] ?? "",
        avatar: data["avatar"] ?? "",
      );
    }).toList();
  }
}
