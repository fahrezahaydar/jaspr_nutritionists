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
    String button = isFooter ? "flex-row p-14 gap-8" : "flex-col p-20 gap-14 l:p-24 l:gap-16 d:p-30 d:gap-24";
    String icon = isFooter ? "text-[20px] t-xl:text-[24px]'" : "text-[26px] d:text-[34px]";
    for (var i in contactInfo) {
      yield div(
        classes: "flex flex-1 items-center self-stretch justify-center rounded-md bg-dark-green-20 border border-dark-green-25 $button",
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
