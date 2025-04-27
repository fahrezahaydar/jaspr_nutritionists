part of '../home.dart';

class PricingGrid extends StatelessComponent {
  const PricingGrid(this.children, {super.key});
  final List<Component> children;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "flex flex-col items-center self-stretch gap-30 t-xl:gap-40 d:gap-50", [
      div(
        classes: 'flex flex-col items-center gap-10 d:gap-14',
        [
          div(classes: "flex items-center p-10 rounded-lg border border-green-80", [
            button(
              classes: "flex px-24 py-10 items-center justify-center rounded-md text-gray-30 data-[plan=monthly]:bg-dark-green-20 hover:bg-dark-green-80 data-[plan=monthly]:text-white font-sans text-[14px] leading-[150%] font-semibold ",
              attributes: {"data-plan": "monthly"},
              onClick: () => changePlan("monthly"),
              [text("Monthly")],
            ),
            button(
              classes: "flex px-24 py-10 items-center justify-center rounded-md text-gray-30 data-[plan=yearly]:bg-dark-green-20 hover:bg-dark-green-80 data-[plan=yearly]:text-white font-sans text-[14px] leading-[150%] font-semibold ",
              attributes: {"data-plan": "monthly"},
              onClick: () => changePlan("yearly"),
              [text("Yearly")],
            )
          ]),
          p(classes: "max-d:text-[16px]", [text("Save 50% on Yearly")])
        ],
      ),
      div(classes: 'grid grid-cols-1 gap-20 d:gap-30 l:grid-cols-3', children)
    ]);
  }

  void changePlan(String value) {
    var elements = web.document.querySelectorAll('[data-plan]');

    for (var i = 0; i < elements.length; i++) {
      var test = elements.item(i) as web.HTMLElement;
      test.dataset["plan"] = value;
    }
  }
}
