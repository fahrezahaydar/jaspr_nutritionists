part of '../home.dart';

class PricingCard extends StatelessComponent {
  const PricingCard(this.data, {this.isDetails = false});
  final Plan data;
  final bool isDetails;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'col-start p-10-30 round-10 box-light-3 g-card ${isDetails ? "self-start" : "justify-between"}',
      [
        div(
          classes: "col-start gap2-2-0 ",
          [
            h3([text(data.title)]),
            p([text(data.label)]),
          ],
        ),
        if (isDetails)
          div(classes: "col-start gap-4-16", [
            div(
              classes: "col-start round-10 box-light-1 *:not-last:border-b-green-80",
              data.features.map((feature) {
                return div(
                  classes: "flex self-stretch not-last:border-b border-green-80 px-4-18 py-4-12 ",
                  [text(feature)],
                );
              }).toList(),
            ),
            if (data.special != null)
              div(
                classes: "flex *:text-start round-10 self-stretch px-4-18 py-4-12 bg-dark-green-20 *:text-white",
                [
                  p([text(data.special!)])
                ],
              )
          ]),
        if (!isDetails) p(classes: "text-gray-15 self-stretch", [text(data.subtitle)]),
        div(
          attributes: {"data-plan": "monthly"},
          classes: "data-[plan=yearly]:hidden row-center  gap-2",
          [
            span(
              classes: "text-[40px] d:text-[50px] font-bold leading-none text-dark-green-25",
              [text(data.price.monthly)],
            ),
            span(
              classes: "text-2 font-medium leading-[150%] text-gray-20",
              [text("/monthly")],
            ),
          ],
        ),
        div(
          attributes: {"data-plan": "monthly"},
          classes: "data-[plan=monthly]:hidden row-center gap-2",
          [
            span(
              classes: "text-[40px] d:text-[50px] font-bold leading-none text-dark-green-25",
              [text(data.price.yearly)],
            ),
            span(
              classes: " text-2  font-medium leading-[150%] text-gray-20",
              [text("/yearly")],
            ),
          ],
        ),
        Button(classes: "self-stretch items-center", [text("Choose Plan")])
      ],
    );
  }
}
