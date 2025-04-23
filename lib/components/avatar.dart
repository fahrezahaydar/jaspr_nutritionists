import 'package:jaspr/jaspr.dart';

class Avatar extends StatelessComponent {
  const Avatar(this.leading, {super.key});
  final String leading;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield img(
      classes: 'size-40 rounded-md d:rounded-lg l:size-50  d:size-60',
      src: leading,
      loading: MediaLoading.lazy,
    );
  }
}
