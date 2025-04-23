import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';
import 'package:universal_web/web.dart' as web;

import '../components/logo.dart';
import '../constants/routes.dart';

@client
class Footer extends StatelessComponent {
  static const contactInfo = [
    (label: 'hello@squareup.com', icon: 'mail'),
    (label: '+91 91813 23 2309', icon: 'call'),
    (label: 'Somewhere in the World', icon: 'location_on'),
  ];

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer([
      div(classes: 'flex justify-between self-stretch max-t-xl:flex-col max-t-xl:gap-30', [
        div(classes: 'flex content-center justify-between self-stretch items-center ', [
          Logo(),
          _buildScrollToTop(moreClasses: "t-xl:hidden"),
        ]),
        _NavContainer(),
        _buildScrollToTop(moreClasses: "max-t-xl:hidden"),
      ]),
      div(classes: ' footer-container', [
        div(classes: 'contact-section', [
          for (var button in contactInfo) _buildContactButton(button.label, button.icon),
        ]),
        p(classes: "text-gray-95 text-[14px] l:text-[16px] font-normal leading-[150%]", [
          text('© 2023 Nutritionist. All rights reserved.'),
        ]),
      ]),
    ]);
  }

  // Helper method to create contact buttons
  Component _buildContactButton(String label, String icon) {
    return div(classes: 'contact-button', [
      div(
        classes: 'font-icon text-green-70 text-[20px] t-xl:text-[24px]',
        [text(icon)],
      ),
      text(label),
    ]);
  }

  // Extract the scroll-to-top component logic
  Component _buildScrollToTop({String? moreClasses}) {
    return div(
      classes: 'flex items-center gap-6 t-xl:gap-20 $moreClasses ',
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

class _NavContainer extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex items-center gap-16 d:gap-26 max-t:flex-wrap max-t:justify-start max-t:pr-[66px]', [
      for (var route in Routes.all)
        Link(
          classes: 'text-white text-[14px] font-medium no-underline leading-[150%] l:text-[18px]',
          to: route.path,
          child: text(route.label),
        ),
    ]);
  }
}
