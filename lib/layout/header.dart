import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart' as web;

import '../components/navigation_bar.dart';
import '../constants/routes.dart';
import '../components/logo.dart';

class Header extends StatelessComponent {
  const Header({super.key});
  static List<({String label, String path})> get routes => Routes.nav;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield header([
      Logo(),
      NavigationBar(
        routes: routes,
      ),
      div(
        classes: 'text-green-70 text-4xl font-icon t-xl:hidden',
        events: events(
          onClick: () => toggleSideNav(),
        ),
        [text('menu')],
      ),
    ]);

    yield div(
      id: 'sidebar',
      [
        div(classes: 'nav-bg', events: events(onClick: toggleSideNav), []),
        div(classes: 'sidenav', [
          button(
            classes: ' font-icon text-green-70 text-4xl self-start',
            onClick: toggleSideNav,
            [text('close')],
          ),
          const Logo(classes: "col-center"),
          NavigationBar(
            type: NavBarType.sidebar,
            routes: routes,
          )
        ]),
      ],
    );
  }
}

void toggleSideNav() {
  if (kIsWeb) {
    final side = web.document.getElementById("sidebar") as web.HTMLDivElement;
    side.classList.toggle('active');
    web.document.body!.style.overflow = web.document.body!.style.overflow != 'hidden' ? 'hidden' : '';
  }
}
