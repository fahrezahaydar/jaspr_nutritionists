import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

enum NavBarType { header, footer, sidebar }

class NavigationBar extends StatelessComponent {
  const NavigationBar({
    this.type = NavBarType.header,
    required this.routes,
    super.key,
  });
  final List<({String label, String path})> routes;
  final NavBarType type;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = context.url;
    var isNotFooter = type != NavBarType.footer;
    var isHeader = type == NavBarType.header;
    String navClasses;
    String linkClasses;
    switch (type) {
      case NavBarType.footer:
        linkClasses = " text-[14px] font-medium no-underline leading-[150%] l:text-[18px]";
        navClasses = "flex items-center gap-16 d:gap-26 max-t:flex-wrap max-t:justify-start max-t:pr-[66px]";
        break;
      case NavBarType.sidebar:
        linkClasses = "text-[18px] px-16 py-8 leading-[150%] hover:bg-dark-green-25 hover:text-white rounded-[8px]";
        navClasses = "flex flex-col items-center gap-16 self-center";
        break;
      default:
        linkClasses = "text-[18px] px-16 py-8 leading-[150%] hover:bg-dark-green-25 hover:text-white rounded-[8px]";

        navClasses = "hidden t-xl:flex overflow-hidden justify-end items-center";
    }
    yield nav(
      classes: navClasses,
      [
        for (var route in routes)
          Link(
            classes: "${activePath == route.path ? 'text-green-70 font-bold' : 'text-green-97 font-semibold'} $linkClasses ",
            to: route.path,
            child: text(route.label),
          ),
        if (isNotFooter)
          Link(
            classes: 'btn-primary ${isHeader ? "ml-16" : ""}',
            to: '/contact-us',
            child: text("Contact Us"),
          ),
      ],
    );
  }
}
