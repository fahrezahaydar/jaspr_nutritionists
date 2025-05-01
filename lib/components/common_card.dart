import 'package:jaspr/jaspr.dart';

import '../constants/styles.dart';
import '../model/content.dart';

class CommonCard extends StatelessComponent {
  const CommonCard(this.data);
  final Content data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: st.card1, [
      div(classes: 'row-center gap-4-10 ', [
        img(
          classes: 'size-48 t:size-54 l:size-68 p-12 l:p-14 rounded-lg  bg-green-70',
          src: data.media!,
        ),
        h5(classes: 'text-start', [
          text(data.title),
        ])
      ]),
      p(classes: 'text-start', [
        text(data.subtitle),
      ])
    ]);
  }
}
