import 'package:jaspr/jaspr.dart';

import '../constants/styles.dart';
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
    yield section(
      classes: st.cta,
      [
        img(
          classes: "absolute z-0 h-125 d:h-143 -top-68 l:-top-38 -left-109 l:-left-69",
          src: "images/abstract-left.svg",
        ),
        img(
          classes: "absolute z-0 size-137 l:size-113 d:size-164 -right-10 -bottom-31 d:-right-37 d:-bottom-52",
          src: "images/petals.svg",
        ),
        div(
          classes: "col-center z-1 gap-10 l:flex-1 *:max-l:text-center *:self-stretch",
          [
            h3([text(data.title)]),
            p(classes: " text-gray-20", [text(data.subtitle)]),
          ],
        ),
        Button(
          classes: "z-1 max-l:self-stretch",
          [text(buttonText)],
        ),
      ],
    );
  }
}
