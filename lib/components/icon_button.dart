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

class MediaButton extends StatelessComponent {
  final String? classes;

  MediaButton({super.key, this.classes});
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield i(
      classes: 'p-14 d:p-18 rounded-md d:rounded-xl text-gray-15 bg-green-70 $classes',
      [],
    );
  }
}

class OpenButton extends StatefulComponent {
  final String? classes;
  final Styles? style;
  final void Function()? onClick;

  const OpenButton({
    super.key,
    this.style,
    this.classes,
    this.onClick,
  });

  @override
  State createState() => OpenButtonState();
}

class OpenButtonState extends State<OpenButton> {
  bool active = false;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: 'p-10 d:p-12 rounded-sm d:rounded-md text-white font-icon d:text-[24px] leading-[100%] bg-dark-green-20 no-underline text-[20px]',
      styles: component.style,
      onClick: () {
        setState(() {
          active = !active;
        });
        component.onClick!.call();
      },
      [text(active ? "close" : "add")],
    );
  }
}
