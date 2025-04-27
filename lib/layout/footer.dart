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
      div(classes: 'flex justify-between self-stretch max-t-xl:flex-col max-t-xl:gap-30', [
        div(classes: 'flex justify-between self-stretch items-center ', [
          Logo(),
          _buildScrollToTop(classes: "t-xl:hidden"),
        ]),
        NavigationBar(routes: Routes.all, type: NavBarType.footer),
        _buildScrollToTop(classes: "max-t-xl:hidden"),
      ]),
      div(classes: 'footer-container', [
        div(classes: 'contact-section', [
          const ContactButton(isFooter: true),
        ]),
        p(classes: "text-gray-95 text-[14px] l:text-[16px] font-normal leading-[150%]", [
          text('© 2023 Nutritionist. All rights reserved.'),
        ]),
      ]),
    ]);
  }

  // Extract the scroll-to-top component logic
  Component _buildScrollToTop({String? classes}) {
    return div(
      classes: 'flex items-center gap-6 t-xl:gap-20 $classes ',
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
        button(classes: 'leading-none font-icon p-[14px] bg-dark-green-20 text-white text-[24px] rounded-[50%] d:text-[34px] ', [
          text('arrow_upward'),
        ])
      ],
    );
  }
}
