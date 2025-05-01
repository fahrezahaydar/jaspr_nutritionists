import 'package:jaspr/jaspr.dart';

class Button extends StatelessComponent {
  const Button(
    this.children, {
    this.style,
    this.onClick,
    this.classes,
    this.type,
  });

  final List<Component> children;
  final Styles? style;
  final void Function()? onClick;
  final String? classes;
  final ButtonType? type;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield button(
      classes: "btn-primary $classes",
      styles: style,
      onClick: onClick,
      type: type,
      children,
    );
  }

  factory Button.secondary(
    List<Component> children, {
    void Function()? onClick,
  }) {
    return Button(
      classes: "box-light-1",
      onClick: onClick,
      children,
    );
  }
}
