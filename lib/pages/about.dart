import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../components/common_card.dart';
import '../components/cta.dart';
import '../components/navigation_panel.dart';
import '../components/section_title.dart';
import '../constants/inset.dart';
import '../data/about_raw.dart';
import '../layout/page.dart';
import '../model/export.dart';

part 'widgets/story.dart';
part 'widgets/story_card.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class About extends StatelessComponent {
  const About({super.key});
  static AboutDetails hero = AboutDetails.fromMap(aboutHero);
  static Header story = Header.fromMap(storyHeader);
  static Header achievement = Header.fromMap(achievementHeader);
  static Header about = Header.fromMap(cta);
  static List<Content> achievementContent = Content.fromMap(achievementData);

  static const insets = Insets();

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(id: "about", classes: " page-2 col-center py-main", [
      img(classes: "px-main w-full", src: "images/hero/about.png"),
      section(classes: "mx-main gap-10-30 round-10 box-light-1 ${insets.p30}", [
        h2([text(hero.title)]),
        div(classes: "col-center", [
          for (var t in hero.paragraph) p(classes: " text-gray-20", [text(t)])
        ])
      ]),
      section(classes: "col-start px-main g-section", [
        SectionTitle(achievement),
        div(
          classes: "common-grid gap-10-20",
          achievementContent.map((data) => CommonCard(data)).toList(),
        ),
      ]),
      section(classes: "col-start px-main g-section", [
        SectionTitle(story),
        const Story(),
      ]),
      CTA(about, buttonText: "Book a Demo")
    ]);
  }
}
