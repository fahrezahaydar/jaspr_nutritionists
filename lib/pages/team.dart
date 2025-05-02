import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../components/cta.dart';
import '../components/page_header.dart';
import '../components/tab_menu.dart';
import '../data/team_raw.dart';
import '../layout/page.dart';
import '../model/export.dart';

part 'widgets/team_card.dart';

@client
class Team extends StatelessComponent {
  const Team({super.key});

  static StateProvider<int> teamProvider = StateProvider<int>((ref) => 0);
  static Header get header => Header.fromMap(teamHeader);
  static Header get team => Header.fromMap(cta);
  static List<TeamSection> get teams {
    return teamData.entries.map((entry) {
      return TeamSection.fromMap(entry.key, entry.value);
    }).toList();
  }

  static List<String> get teamList => TeamSection.titleList(teams);

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(
      id: "team",
      classes: "page-2 col-start py-main",
      [
        section(classes: "col-start px-main", [
          PageHeader(header),
          div(classes: "col-start gap-10-30", [
            TabMenu(
              data: teamList,
              provider: teamProvider,
            ),
            Builder(builder: (context) sync* {
              var index = context.watch(teamProvider);
              yield div(classes: "grid grid-cols-1 t:grid-cols-2 t-xl:grid-cols-3 l:grid-cols-4 gap2-10-20 self-stretch", [
                for (var i = 0; i < teams[index].members.length; i++) TeamCard(teams[index].members[i]),
              ]);
            })
          ]),
        ]),
        CTA(
          team,
          buttonText: "Apply Now",
        )
      ],
    );
  }
}
