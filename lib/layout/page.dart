import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import 'banner.dart';
import 'footer.dart';
import 'header.dart';

class Page extends StatelessComponent {
  const Page(this.children, {this.id, this.classes, super.key});
  final List<Component> children;
  final String? id;
  final String? classes;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield const Banner();
    yield const Header();
    yield ProviderScope(
      child: div(
        classes: classes,
        id: id,
        children,
      ),
    );
    yield const Footer();
  }
}
