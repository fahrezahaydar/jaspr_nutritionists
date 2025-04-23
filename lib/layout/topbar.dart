import 'package:jaspr/jaspr.dart';

class TopBar extends StatelessComponent {
  const TopBar({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'top-banner', [
      img(
          classes:
              'hidden absolute left-[-50px] bottom-[25px] h-[72px]  max-lg:block',
          src: 'images/abstract-left.svg'),
      img(
          classes:
              'hidden absolute right-[-50px] bottom-[25px] h-[72px] max-lg:block',
          src: 'images/abstract-right.svg'),
      div(classes: 'banner-container', [
        img(
            classes: 'absolute left-[40px] h-[100px] max-lg:hidden',
            src: 'images/abstract-left.svg'),
        img(
          classes: ' absolute right-[40px] h-[100px] max-lg:hidden',
          src: 'images/abstract-right.svg',
        ),
        img(
          classes: 'h-[24px] max-md:h-[20px]',
          src: 'images/cricket-ball.svg',
        ),
        p(
          classes: 'text-white',
          [text('Join Our Personalized Nutrition Demo For Free')],
        ),
        div(classes: 'font-icon text-white text-[24px] max-md:text-[20px]', [
          text('arrow_forward'),
        ]),
      ]),
    ]);
  }
}
