import 'package:jaspr/jaspr.dart';

class IconButton extends StatefulComponent {
  const IconButton(
    this.icons, {
    this.style,
  });

  final String icons;
  final Styles? style;

  @override
  State createState() => IconButtonState();
}

class IconButtonState extends State<IconButton> {
  bool active = false;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'p-14 d:p-18 border border-green-90 rounded-md d:rounded-xl text-gray-30 font-icon d:text-[24px] leading-[100%] bg-green-95 no-underline text-[20px]',
      styles: component.style,
      onClick: () {
        setState(() {
          active = !active;
        });
      },
      [text(active ? component.icons : "${component.icons}_border")],
    );
  }
}
