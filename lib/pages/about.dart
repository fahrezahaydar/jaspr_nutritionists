import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../components/common_card.dart';
import '../components/cta.dart';
import '../components/navigation_panel.dart';
import '../components/section_title.dart';
import '../constants/styles.dart';
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
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(classes: "${St.py_50} ${St.page}", [
      section(classes: "self-stretch", [
        img(classes: "w-full ", src: "images/hero/about.png"),
      ]),
      section([
        div(classes: "flex flex-col p-30 t-xl:p-80 d:p-100 items-center g-20 t-xl:g-40 d:g-50 rounded-[10px] d:rounded-xl border border-green-85 bg-green-95", [
          h2(
            classes: "self-stretch",
            [text(hero.title)],
          ),
          p(
            classes: "self-stretch text-gray-20 flex flex-col",
            [for (var t in hero.paragraph) text(t)],
          )
        ]),
      ]),
      section([
        SectionTitle(achievement),
        div(
          classes: "grid grid-cols-1 gap-20 l:gap-30 l:grid-cols-2",
          achievementContent.map((data) => CommonCard(data)).toList(),
        ),
      ]),
      section([
        SectionTitle(story),
        const Story(),
      ]),
      CTA(about, buttonText: "Book a Demo")
    ]);
  }
}
