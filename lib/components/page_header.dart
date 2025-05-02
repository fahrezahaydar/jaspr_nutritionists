import 'package:jaspr/jaspr.dart';

import '../model/header.dart';

class PageHeader extends StatelessComponent {
  const PageHeader(this.header);
  final Header header;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: "col-center relative overflow-clip box-light-1 p-30 l:p-80 d:p-100 gap-30 l:gap-60 d:gap-80 rounded-t-[10px] d:rounded-t-xl",
      [
        img(
          classes: "absolute self-stretch w-420 l:w-650 d:w-750 left-[50%] -translate-x-1/2 -top-48 z-0",
          src: "images/svg/plus_bg.svg",
        ),
        div(
          classes: "flex p-14 z-1 d:p-20 items-center round-10 border-3 d:border-4 bg-linear-0 from-transparent to-green-70 border-white ",
          [
            img(
              classes: "size-34 t-xl:size-40 d:size-50",
              src: "images/petals_primary.svg",
            ),
          ],
        ),
        div(classes: "col-start gap-4-6 *:self-stretch *:text-center", [
          h2([text(header.title)]),
          p(classes: "text-gray-20 ", [text(header.subtitle)]),
        ])
      ],
    );
  }
}
