import 'package:jaspr/jaspr.dart';

class Logo extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield img(
      classes: 'h-30 d:h-45 t-xl:h-34 ',
      src: 'images/logo.svg',
    );
  }
}
