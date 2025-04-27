import 'package:jaspr/jaspr.dart';

import '../data/pricing_raw.dart';
import '../components/page_header.dart';
import '../constants/styles.dart';
import '../layout/page.dart';
import '../model/export.dart';
import '../model/plan_feature.dart';
import 'home.dart';

@client
class Pricing extends StatelessComponent {
  static Header get header => Header.fromMap(pricingHero);
  static List<Plan> pricingData = pricingList.map((item) => Plan.fromMap(item)).toList();
  static List<PlanFeature> featureList = features.map((e) => PlanFeature.fromMap(e)).toList();
  static List<String> tableHeader = ["Features", "Basic Plan", "Premium Plan", "Ultimate Plan"];
  const Pricing({
    super.key,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(
      classes: "page ${St.py_50}",
      [
        PageHeader(header),
        section([
          PricingGrid(
            pricingData.map((data) => PricingCard(data, isDetails: true)).toList(),
          ),
        ]),
        section([
          table(
            classes: "flex self-stretch rounded-xl p-30 border border-green-85 bg-green-95 l:p-50",
            [
              thead(classes: "", [
                tr([
                  for (var str in tableHeader)
                    th(
                      classes: "flex rounded-md bg-dark-green-20 self-stretch px-plus4-20 py-plus4-14",
                      [text(str)],
                    ),
                ])
              ]),
            ],
          ),
        ])
      ],
    );
  }
}
