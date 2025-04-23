import 'package:jaspr/jaspr.dart';

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

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "flex items-center justify-center gap-20 self-stretch d:gap-30 $classes", [
      button(
        classes: "flex font-icon leading-none p-10 d:p-12 d:rounded-[8px] rounded-[6px] border border-green-90 bg-green-95 text-gray-20 text-[28px] hover:bg-green-85",
        onClick: leftClick,
        [text("chevron_left")],
      ),
      p(classes: "flex gap-4 font-light", [
        text(currentIndex),
        text("/"),
        text(totalItems),
      ]),
      button(
        classes: "flex leading-none font-icon p-10 d:p-12 d:rounded-[8px] rounded-[6px] border border-green-90 text-gray-20 text-[28px] bg-green-95 hover:bg-green-85",
        onClick: rightClick,
        [text("chevron_right")],
      ),
    ]);
  }
}
