import 'team_member.dart';

class TeamSection {
  final String title;
  final List<TeamMember> members;

  TeamSection({
    required this.title,
    required this.members,
  });

  factory TeamSection.fromMap(String title, List<dynamic> dataList) {
    return TeamSection(
      title: title,
      members: dataList.map((e) => TeamMember.fromMap(e)).toList(),
    );
  }

  static List<String> titleList(List<TeamSection> data) {
    return data.map((e) => e.title).toList();
  }
}
