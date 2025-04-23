import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:universal_web/web.dart' as web;

import '../constants/routes.dart';
import '../components/logo.dart';

@client
class Header extends StatelessComponent {
  const Header({super.key});
  static List<({String label, String path})> get routes => Routes.nav;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = context.url;
    yield header([
      Logo(),
      div(classes: 'hidden overflow-hidden justify-end items-center gap-40 t-xl:flex', [
        nav(classes: "flex overflow-hidden justify-end items-center ", [
          for (var route in routes)
            Link(
              classes: "${activePath == route.path ? 'text-green-70 font-bold' : 'text-green-97 font-semibold'} text-[18px] px-16 py-8 line-height-[150%] hover:bg-dark-green-25 hover:text-white rounded-[8px]",
              to: route.path,
              child: text(route.label),
            ),
        ]),
        Link(
          classes: 'btn-primary',
          to: '/contact-us',
          child: text("Contact Us"),
        ),
      ]),
      div(
        classes: ' text-green-70 text-[34px] font-icon t-xl:hidden',
        events: events(
          onClick: () => toggleSideNav(),
        ),
        [text('menu')],
      ),
    ]);
    yield div(
      id: 'sidebar',
      [
        div(
            classes: 'nav-bg',
            events: events(
              onClick: () => toggleSideNav(),
            ),
            []),
        div(classes: 'sidenav', [
          button(
            classes: ' font-icon text-green-70 text-[34px] self-start',
            onClick: () => toggleSideNav(),
            [text('close')],
          ),
          div(classes: 'flex justify-center items-center', [
            Logo(),
          ]),
          nav(classes: "flex flex-col  items-center, gap-16, self-center", [
            for (var route in routes)
              Link(
                classes: "${activePath == route.path ? 'text-green-70 font-bold' : 'text-green-97 font-semibold'} text-[18px] fo line-height-[150%] self-center p-10 hover:bg-dark-green-25 hover:text-white rounded-[8px]",
                to: route.path,
                child: text(route.label),
              ),
          ]),
          div(classes: 'flex justify-center items-center', [
            Link(
              classes: 'btn-primary',
              to: '/contact-us',
              child: text("Contact Us"),
            ),
          ]),
        ]),
      ],
    );
  }
}

void toggleSideNav() {
  if (kIsWeb) {
    print("Test : IsWeb");
    final side = web.document.getElementById("sidebar") as web.HTMLDivElement;
    side.classList.toggle('active');
    web.document.body!.style.overflow = web.document.body!.style.overflow != 'hidden' ? 'hidden' : '';
  } else {
    print("Test : Hello");
  }
}
