import 'package:jaspr/jaspr.dart';

import '../model/header.dart';

class SectionTitle extends StatelessComponent {
  const SectionTitle(
    this.header, {
    super.key,
  });
  final Header header;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'col-center gap-2-6 l:px-250 d:px-300 *:text-center', [
      h2([text(header.title)]),
      p(
        classes: 'text-gray-20',
        [text(header.subtitle)],
      )
    ]);
  }
}
