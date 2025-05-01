import 'package:jaspr/jaspr.dart';

class ContactButton extends StatelessComponent {
  const ContactButton({this.isFooter = false, super.key});
  static var contactInfo = [
    (label: 'hello@squareup.com', icon: 'mail'),
    (label: '+91 91813 23 2309', icon: 'call'),
    (label: 'Somewhere in the World', icon: 'location_on'),
  ];
  final bool isFooter;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    String button = isFooter ? "flex-row p-14 gap-8" : "flex-col p-20 gap-4-16 l:p-24 d:p-30";
    String icon = isFooter ? "text-[20px] t-xl:text-[24px]'" : "text-[26px] d:text-[34px]";
    for (var i in contactInfo) {
      yield div(
        classes: "grow row-center justify-center rounded-md box-dark-1 $button",
        [
          div(
            classes: 'font-icon text-green-70 $icon',
            [text(i.icon)],
          ),
          p(classes: "text-white whitespace-nowrap", [text(i.label)]),
        ],
      );
    }
  }
}
