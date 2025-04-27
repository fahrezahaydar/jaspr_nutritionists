import 'package:jaspr/jaspr.dart';

import '../components/common_card.dart';
import '../components/cta.dart';
import '../components/page_header.dart';
import '../components/section_title.dart';
import '../constants/styles.dart';
import '../data/process.raw.dart';
import '../layout/page.dart';
import '../model/export.dart';

@client
class Process extends StatelessComponent {
  const Process({super.key});
  static Header get header => Header.fromMap(process);
  static Header get sectionTitle1 => Header.fromMap(howItWork);
  static Header get processCTA => Header.fromMap(cta);
  static List<Content> get details => Content.fromMap(processDetail);

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(
      classes: "page ${St.py_50}",
      [
        PageHeader(header),
        section([
          SectionTitle(sectionTitle1),
          div(
            classes: "grid grid-cols-1 gap-20 t-xl:gap-30 t-xl:grid-cols-2",
            [
              for (var i = 0; i < details.length; i++)
                div(classes: "flex flex-col self-stretch -space-y-48 t-xl:-space-68 d:-space-y-90", [
                  h1(
                    classes: "text-start text-dark-green-40 text-[80px] t-xl:text-[100px] d:text-[150px] leading-[150%]",
                    [text("${(i + 1) < 10 ? "0${i + 1}" : i + 1}")],
                  ),
                  CommonCard(details[i]),
                ]),
            ],
          )
        ]),
        CTA(processCTA, buttonText: "Join Us Now"),
      ],
    );
  }
}
