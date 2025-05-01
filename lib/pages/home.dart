import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import 'package:universal_web/web.dart' as web;

import '../components/avatar.dart';
import '../components/button.dart';
import '../components/common_card.dart';
import '../components/list_tile.dart';
import '../components/navigation_panel.dart';
import '../components/section_title.dart';
import '../constants/inset.dart';
import '../constants/text_theme.dart';
import '../data/home_data.dart';
import '../layout/page.dart';
import '../model/export.dart';

part 'widgets/home_hero.dart';
part 'widgets/blog_card.dart';
part 'widgets/blog.dart';
part 'widgets/testimonial_card.dart';
part 'widgets/pricing_card.dart';
part 'widgets/pricing.dart';
part 'widgets/testimonial.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  static Header feature = Header.fromMap(featuresHeader);
  static Header blog = Header.fromMap(blogHeader);
  static Header testimonial = Header.fromMap(testimonialHeader);
  static Header pricing = Header.fromMap(pricingHeader);
  static List<Content> featureContent = Content.fromMap(featuresData);
  static List<Plan> pricingData = pricingList.map((item) => Plan.fromMap(item)).toList();

  static const insets = Insets();
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(
      id: "home",
      classes: "page-2 col-center ${insets.pb50}",
      [
        HomeHero(),
        section(classes: "col-start px-main g-section", [
          SectionTitle(feature),
          div(
            classes: "common-grid gap-10-20 ",
            featureContent.map((data) => CommonCard(data)).toList(),
          ),
        ]),
        section(classes: "col-start px-main g-section", [
          SectionTitle(blog),
          const BlogSection(),
        ]),
        section(classes: "col-start px-main g-section", [
          SectionTitle(testimonial),
          const Testimonial(),
        ]),
        section(classes: "col-start px-main g-section", [
          SectionTitle(pricing),
          PricingGrid(
            pricingData.map((data) => PricingCard(data)).toList(),
          ),
        ]),
      ],
    );
  }
}
