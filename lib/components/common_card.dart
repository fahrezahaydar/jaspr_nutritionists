import 'package:jaspr/jaspr.dart';

import '../model/content.dart';

class CommonCard extends StatelessComponent {
  const CommonCard(this.data);
  final Content data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex flex-col p-24 t:p-30 l:px-50 l:py-40  gap-20 l:gap-24 border border-green-90 rounded-xl items-start grow bg-green-95', [
      div(classes: 'flex gap-10 l:gap-14 items-center self-stretch', [
        div(classes: 'flex p-12 l:p-14 rounded-l-lg items-center text-start bg-green-70', [
          img(
            classes: 'size-24 t:size-30 l:size-40',
            src: data.media!,
          ),
        ]),
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
