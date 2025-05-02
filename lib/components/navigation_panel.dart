import 'package:jaspr/jaspr.dart';

import '../constants/styles.dart';

class NavigationPanel extends StatelessComponent {
  const NavigationPanel({
    required this.leftClick,
    required this.rightClick,
    required this.currentIndex,
    required this.totalItems,
    this.classes = "",
  });

  final void Function()? leftClick;
  final void Function()? rightClick;
  final String currentIndex;
  final String totalItems;
  final String classes;

  static const st = ComponentStyles();

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "row-center justify-center gap2-10-20 $classes", [
      button(
        classes: st.panelButton,
        onClick: leftClick,
        [text("chevron_left")],
      ),
      p(classes: "flex gap-4 font-light", [
        text(currentIndex),
        text("/"),
        text(totalItems),
      ]),
      button(
        classes: st.panelButton,
        onClick: rightClick,
        [text("chevron_right")],
      ),
    ]);
  }
}
