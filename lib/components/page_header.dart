import 'package:jaspr/jaspr.dart';

import '../model/header.dart';

class PageHeader extends StatelessComponent {
  const PageHeader(this.header);
  final Header header;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: "self-stretch", [
      div(
        classes: "flex relative overflow-clip flex-col items-center self-stretch border border-green-85 bg-green-95 p-30 l:p-80 d:p-100 gap-30 l:gap-60 d:gap-80 rounded-t-[10px] d:rounded-t-xl",
        [
          img(
            classes: "absolute self-stretch w-420 l:w-650 d:w-750 left-[50%] -translate-x-1/2 -top-48 z-0",
            src: "images/svg/plus_bg.svg",
          ),
          div(
            classes: "flex p-14 z-1 d:p-20 items-center rounded-[10px] d:rounded-xl border-3 d:border-4 bg-linear-0 from-transparent to-green-70 border-white ",
            [
              img(
                classes: "size-34 t-xl:size-40 d:size-50",
                src: "images/petals_primary.svg",
              ),
            ],
          ),
          div(
            classes: "flex flex-col self-stretch gap-6 t-xl:gap-10 d:gap-20",
            [
              h2(
                classes: "self-stretch",
                [text(header.title)],
              ),
              p(
                classes: "text-gray-20 self-stretch",
                [text(header.subtitle)],
              ),
            ],
          )
        ],
      ),
    ]);
  }
}
