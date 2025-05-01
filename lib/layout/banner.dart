import 'package:jaspr/jaspr.dart';

import '../constants/styles.dart';

class Banner extends StatelessComponent {
  const Banner({super.key});

  static const st = ComponentStyles();

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: st.banner, [
      img(
        classes: 'hidden absolute -left-50 -bottom-25 h-72 max-t-xl:block',
        src: 'images/abstract-left.svg',
      ),
      img(
        classes: 'hidden absolute -right-50 -bottom-25 h-72 max-t-xl:block',
        src: 'images/abstract-right.svg',
      ),
      div(classes: st.bannerBox, [
        img(
          classes: 'absolute left-40 h-100 max-t-xl:hidden',
          src: 'images/abstract-left.svg',
        ),
        img(
          classes: 'absolute right-40 h-100 max-t-xl:hidden',
          src: 'images/abstract-right.svg',
        ),
        img(
          classes: 'h-20 l:h-24',
          src: 'images/cricket-ball.svg',
        ),
        p(
          classes: 'text-white',
          [text('Join Our Personalized Nutrition Demo For Free')],
        ),
        div(classes: 'font-icon text-white text-xl l:text-2xl', [
          text('arrow_forward'),
        ]),
      ]),
    ]);
  }
}
