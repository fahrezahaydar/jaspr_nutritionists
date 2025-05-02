import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart' as web;

import '../components/contact_info.dart';
import '../components/logo.dart';
import '../components/navigation_bar.dart';
import '../constants/routes.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer([
      div(classes: 'col-start justify-between t-xl:items-center t-xl:flex-row max-t-xl:gap-20', [
        div(classes: 'row-center justify-between', [
          Logo(),
          _buildScrollToTop(classes: "t-xl:hidden"),
        ]),
        NavigationBar(routes: Routes.all, type: NavBarType.footer),
        _buildScrollToTop(classes: "max-t-xl:hidden"),
      ]),
      div(classes: 'col-start l:flex-row gap-20 p-20 box-dark-1 rounded-lg justify-between', [
        div(classes: 'col-start gap2-4-16 t:flex-row', [
          const ContactButton(isFooter: true),
        ]),
        p(classes: "text-gray-95 font-normal leading-normal self-center", [
          text('© 2023 Nutritionist. All rights reserved.'),
        ]),
      ]),
    ]);
  }

  Component _buildScrollToTop({String? classes}) {
    return div(
      classes: 'flex items-center gap-6 t-xl:gap-14 d:gap-20 $classes ',
      events: events(
        onClick: () {
          web.document.body!.scrollTop = 0;
          web.document.documentElement!.scrollTop = 0;
        },
      ),
      [
        p(classes: "inline text-white", [
          text('Go to Top'),
        ]),
        button(classes: 'leading-none font-icon p-14 bg-dark-green-20 text-white text-[24px] rounded-[50%] d:text-[34px] ', [
          text('arrow_upward'),
        ])
      ],
    );
  }
}
