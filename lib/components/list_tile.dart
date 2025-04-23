import 'package:jaspr/jaspr.dart';

import 'avatar.dart';
import 'icon_button.dart';

class ListTile extends StatelessComponent {
  const ListTile({
    required this.leading,
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String leading;
  final String title;
  final String subtitle;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex bg-green-97 self-stretch gap-20 flex-col items-end l:items-center max-l:justify-center t:flex-row p-16 d:p-20 border border-green-90 rounded-[10px] d:rounded-xl ', [
      div(classes: "flex items-center gap-10 grow shrink-0 self-stretch d:gap-16 l:gap-14", [
        Avatar(leading),
        div(classes: "flex flex-col items-start grow shrink-0", [
          h6(
            classes: "text-start",
            [text(title)],
          ),
          p(
            classes: "text-start",
            [text(subtitle)],
          )
        ]),
      ]),
      div(classes: 'flex items-start gap-8 d:gap-10', [
        IconButton("favorite"),
        IconButton("bookmark"),
      ]),
    ]);
  }
}
