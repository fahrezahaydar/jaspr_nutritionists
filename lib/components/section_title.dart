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
    yield div(classes: 'title', [
      h2([text(header.title)]),
      p(
        classes: 'text-gray-15',
        [text(header.subtitle)],
      )
    ]);
  }
}
