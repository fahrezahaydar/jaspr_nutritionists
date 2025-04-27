import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import 'package:universal_web/web.dart' as web;

import '../components/avatar.dart';
import '../components/button.dart';
import '../components/common_card.dart';
import '../components/list_tile.dart';
import '../components/navigation_panel.dart';
import '../components/section_title.dart';
import '../constants/styles.dart';
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
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(
      classes: "pb-50 l:pb-60 d:pb-80 ${St.page}",
      [
        HomeHero(),
        section([
          SectionTitle(feature),
          div(
            classes: "grid grid-cols-1 gap-20 l:gap-30 l:grid-cols-2",
            featureContent.map((data) => CommonCard(data)).toList(),
          ),
        ]),
        section(classes: "self-stretch", [
          SectionTitle(blog),
          const BlogSection(),
        ]),
        section(classes: "self-stretch", [
          SectionTitle(testimonial),
          const Testimonial(),
        ]),
        section(classes: "self-stretch", [
          SectionTitle(pricing),
          PricingGrid(
            pricingData.map((data) => PricingCard(data)).toList(),
          ),
        ]),
      ],
    );
  }
}
