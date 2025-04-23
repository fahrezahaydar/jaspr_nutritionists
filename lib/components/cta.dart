import 'package:jaspr/jaspr.dart';

import '../model/header.dart';
import 'button.dart';

class CTA extends StatelessComponent {
  const CTA(
    this.data, {
    this.buttonText = "",
    super.key,
  });

  final String buttonText;
  final Header data;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(
        classes: 'flex relative overflow-clip flex-col l:flex-row items-center p-40 t-xl:p-60 d:p-80 gap-20 xl:gap-150 rounded-[10px] d:rounded-xl border border-green-85 bg-green-95',
        [
          div(
            classes: "flex flex-col items-center gap-10 l:flex-1 self-stretch *:l:text-start",
            [
              h3(
                classes: "self-stretch text-gray-15 text-[22px] t-xl:text-[26px] d:text-[32px] ",
                [text(data.title)],
              ),
              p(
                classes: "self-stretch text-gray-20",
                [text(data.subtitle)],
              ),
            ],
          ),
          Button(
            classes: "max-l:self-stretch",
            [text(buttonText)],
          ),
          img(
            classes: "absolute h-125 d:h-143  stroke-3 stroke-green-70 2xl:stroke-5 top-[-68px] l:top-[-38px] left-[-109px] l:left-[-69px]",
            src: "images/abstract-left.svg",
          ),
          img(
            classes: "absolute size-137 l:size-113 d:size-164 right-[-10px] bottom-[-31px] d:right-[-37px] d:bottom-[-52px] ",
            src: "images/petals.svg",
          )
        ],
      ),
    ]);
  }
}
