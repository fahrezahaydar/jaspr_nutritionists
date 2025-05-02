import 'package:jaspr/jaspr.dart';

import '../model/content.dart';

class CommonCard extends StatelessComponent {
  const CommonCard(this.data);
  final Content data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'col-start box-light-1 round-10 gap-4-16 p-10-30 d:py-40', [
      div(classes: 'row-center gap2-4-10 ', [
        img(
          classes: 'size-48 t:size-54 l:size-68 p-12 d:p-14 rounded-md bg-green-70',
          src: data.media!,
        ),
        h5([text(data.title)])
      ]),
      p(classes: 'text-gray-20 ', [text(data.subtitle)])
    ]);
  }
}
