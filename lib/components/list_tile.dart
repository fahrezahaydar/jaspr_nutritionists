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
    yield div(classes: 'col-start gap-20 t:flex-row p-16 d:p-20 box-light-2 round-10 ', [
      div(classes: "row-center grow gap-4-10 ", [
        Avatar(leading),
        div(classes: "col-start *:text-start", [
          h6([text(title)]),
          p([text(subtitle)])
        ]),
      ]),
      div(classes: 'row-end gap-8 d:gap-10', [
        IconButton("favorite"),
        IconButton("bookmark"),
      ]),
    ]);
  }
}
