import 'package:jaspr/jaspr.dart';
import 'package:universal_web/web.dart' as web;

import '../components/button.dart';
import '../components/icon_button.dart';
import '../components/section_title.dart';
import '../data/pricing_raw.dart';
import '../components/page_header.dart';
import '../constants/styles.dart';
import '../layout/page.dart';
import '../model/export.dart';
import '../model/faq.dart';
import '../model/plan_feature.dart';
import 'home.dart';

@client
class Pricing extends StatelessComponent {
  static Header get header => Header.fromMap(pricingHero);
  static Header get cta => Header.fromMap(pricingCTA);
  static List<Plan> pricingData = pricingList.map((item) => Plan.fromMap(item)).toList();
  static List<PlanFeature> featureList = features.map((e) => PlanFeature.fromMap(e)).toList();
  static List<String> tableHeader = ["Features", "Basic Plan", "Premium Plan", "Ultimate Plan"];
  static Header get faq => Header.fromMap(faqHeader);
  static List<FAQ> get faqs => faqData.map((e) => FAQ.fromMap(e)).toList();

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
            classes: "flex flex-col self-stretch rounded-xl p-30 border border-green-85 bg-green-95 l:p-50 overflow-auto whitespace-nowrap *:min-w-1120",
            [
              thead(classes: "flex self-stretch py-10 l:py-20 d:py-30", [
                tr(classes: "flex self-stretch w-full ", [
                  for (var str in tableHeader)
                    th(
                      classes: "flex not-first:px-30 first:pr-30 not-first:w-1/5 first:w-2/5 not-first:*:justify-center",
                      [
                        div(classes: "flex items-center w-full rounded-md l:rounded-lg bg-dark-green-20 self-stretch px-4-20 py-4-14", [
                          h5(classes: "text-white self-center", [
                            text(str),
                          ]),
                        ])
                      ],
                    ),
                ])
              ]),
              tbody(classes: "flex flex-col self-stretch ", [
                for (var a in featureList)
                  tr(
                    classes: "flex w-full self-stretch not-last:border-b *:not-last:border-r *:border-green-80 border-green-80 *:not-first:px-30 *:first:pr-30 *:not-first:w-1/5 *:first:w-2/5 *:not-first:justify-center *:flex *:py-10-30 ",
                    [
                      td([
                        p(classes: "text-start", [
                          text(a.feature),
                        ])
                      ]),
                      td([_buildIcon(a.basicPlan)]),
                      td([_buildIcon(a.premiumPlan)]),
                      td([_buildIcon(a.ultimatePlan)]),
                    ],
                  )
              ])
            ],
          ),
        ]),
        section([
          SectionTitle(faq),
          div(classes: "flex max-l:flex-col items-start self-stretch gap-20 l:gap-30 d:gap-50", [
            div(
              classes: "flex flex-col grow items-center p-30 self-stretch rounded-xl border border-green-85 bg-green-95",
              faqs.indexed.map((val) {
                return _buildFAQ(val.$1, val.$2);
              }).toList(),
            ),
            div(classes: "flex flex-col l:min-w-400 items-center justify-center max-l:self-stretch px-24 py-50 ${St.l("gap-50 py-60")} ${St.d("px-30 py-80")} gap-30 rounded-xl border border-green-85 bg-green-95", [
              img(classes: "size-80 l:size-100 d:size-120", src: "images/petals_green.svg"),
              div(classes: "flex flex-col items-center self-stretch gap-4-8 *:self-stretch text-dark-green-20 font-semibold leading-normal text-center *:text-center text-[22px] l:text-[26px] d:text-[34px]", [
                text(cta.title),
                p([text(cta.subtitle)])
              ]),
              Button([text("Ask A Question")])
            ]),
          ]),
        ])
      ],
    );
  }

  Component _buildIcon(bool isTrue) {
    return span(
      classes: "flex justify-center size-32  d:size-40 items-center font-icon text-[20px] p-6 rounded-md text-gray-15 ${isTrue ? "bg-green-70" : "bg-green-90"}",
      [isTrue ? text("check") : text("close")],
    );
  }

  Component _buildFAQ(int i, FAQ data) {
    return div(id: "faq${char(i)}", classes: "flex self-stretch flex-col first:pb-20 last:pt-20 not-first:not-last:py-20 not-last:border-b border-green-85", [
      div(classes: "flex items-center self-stretch gap-20 justify-center", [
        div(classes: "flex flex-col grow items-center self-stretch justify-center", [
          h6(classes: "flex items-center  self-stretch", [text(data.question)]),
          p(
            attributes: {"data-answer": "hide"},
            classes: "text-start pt-20 data-[answer=hide]:hidden max-l:hidden",
            [text(data.answer)],
          )
        ]),
        OpenButton(
          onClick: () => toogleAnswer(i),
        )
      ]),
      p(
        attributes: {"data-answer": "hide"},
        classes: "text-start pt-20 data-[answer=hide]:hidden l:hidden",
        [text(data.answer)],
      )
    ]);
  }

  void toogleAnswer(int i) {
    var element = web.document.getElementById("faq${char(i)}");
    print(element!.tagName);
    var val = element.querySelectorAll('[data-answer]');
    for (var i = 0; i < val.length; i++) {
      var test = val.item(i) as web.HTMLElement;
      var v = test.dataset["answer"];
      print(v);
      if (v == "show") {
        test.dataset["answer"] = "hide";
      } else {
        test.dataset["answer"] = "show";
      }
    }
  }

  String char(int number) {
    // Check if the number is within the valid range (0-25 for a-z)
    if (number < 0 || number > 25) {
      throw ArgumentError('Number must be between 0 and 25');
    }

    // Convert number to letter by adding the ASCII value of 'a' (97)
    return String.fromCharCode(number + 97);
  }
}
