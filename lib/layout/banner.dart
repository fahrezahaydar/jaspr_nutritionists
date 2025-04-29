import 'package:jaspr/jaspr.dart';

class Banner extends StatelessComponent {
  const Banner({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'top-banner', [
      img(
        classes: 'hidden absolute left-[-50px] bottom-[25px] h-[72px] max-t-xl:block',
        src: 'images/abstract-left.svg',
      ),
      img(
        classes: 'hidden absolute right-[-50px] bottom-[25px] h-[72px] max-t-xl:block',
        src: 'images/abstract-right.svg',
      ),
      div(classes: 'banner-container', [
        img(
          classes: 'absolute left-[40px] h-[100px] max-t-xl:hidden',
          src: 'images/abstract-left.svg',
        ),
        img(
          classes: ' absolute right-[40px] h-[100px] max-t-xl:hidden',
          src: 'images/abstract-right.svg',
        ),
        img(
          classes: 'h-[20px] l:h-[24px]',
          src: 'images/cricket-ball.svg',
        ),
        p(
          classes: 'text-white',
          [text('Join Our Personalized Nutrition Demo For Free')],
        ),
        div(classes: 'font-icon text-white text-[20px] l:text-[24px]', [
          text('arrow_forward'),
        ]),
      ]),
    ]);
  }
}
