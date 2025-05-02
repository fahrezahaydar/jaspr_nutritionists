part of '../home.dart';

class PricingGrid extends StatelessComponent {
  const PricingGrid(this.children, {super.key});
  final List<Component> children;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'col-center gap-10-30 ', [
      div(
        classes: 'col-center gap-4-10 ',
        [
          div(classes: "flex items-center p-10 rounded-lg border border-green-80", [
            button(
              classes: "btn-2 data-[plan=monthly]:bg-dark-green-20 hover:bg-dark-green-80 data-[plan=monthly]:text-white",
              attributes: {"data-plan": "monthly"},
              onClick: () => changePlan("monthly"),
              [text("Monthly")],
            ),
            button(
              classes: "btn-2 data-[plan=yearly]:bg-dark-green-20 hover:bg-dark-green-80 data-[plan=yearly]:text-white",
              attributes: {"data-plan": "monthly"},
              onClick: () => changePlan("yearly"),
              [text("Yearly")],
            )
          ]),
          p(classes: "text-2", [text("Save 50% on Yearly")])
        ],
      ),
      div(classes: 'grid grid-cols-1 l:grid-cols-3 gap2-10-20 ', children),
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
