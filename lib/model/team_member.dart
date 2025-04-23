class TeamMember {
  final String id;
  final String name;
  final String job;
  final String image;

  TeamMember({
    required this.id,
    required this.name,
    required this.job,
    required this.image,
  });

  factory TeamMember.fromMap(Map<String, dynamic> map) {
    return TeamMember(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      job: map['job'] ?? '',
      image: "images/team/${map['image']}",
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'job': job,
      'image': image,
    };
  }
}
