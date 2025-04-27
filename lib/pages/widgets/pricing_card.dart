part of '../home.dart';

class PricingCard extends StatelessComponent {
  const PricingCard(this.data, {this.isDetails = false});
  final Plan data;
  final bool isDetails;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'flex flex-col p-30 l:p-40 d:p-50 items-start gap-24 l:gap-30 d:gap-40 justify-between self-stretch rounded-[10px] d:rounded-xl border border-green-90 bg-green-95',
      [
        div(
          classes: "flex flex-col items-start self-stretch",
          [
            span(
              classes: "self-stretch text-[22px] t-xl:text-2xl d:text-3xl font-semibold leading-[150%] text-gray-15",
              [text(data.title)],
            ),
            p(
              classes: "text-start self-stretch ",
              [text(data.label)],
            ),
          ],
        ),
        if (isDetails)
          div(classes: "flex flex-col self-stretch gap-16 d:gap-20", [
            div(
              classes: "flex flex-col self-stretch rounded-md l:rounded-lg border border-green-85 bg-green-90 *:not-last:border-b-green-80",
              data.features.map((feature) {
                return div([
                  div(
                    classes: "flex self-stretch px-18 py-14 l:px-20 l:py-16 d:px-24 d:py-20",
                    [text(feature)],
                  ),
                ]);
              }).toList(),
            ),
            if (data.special != null)
              div(
                classes: "flex rounded-md l:rounded-lg self-stretch px-18 py-14 l:px-20 l:py-16 d:px-24 d:py-20 bg-dark-green-20 *:text-white",
                [
                  p([text(data.special!)])
                ],
              )
          ]),
        if (!isDetails)
          p(
            classes: "text-start self-stretch text-gray-15",
            [text(data.subtitle)],
          ),
        div(
          attributes: {"data-plan": "monthly"},
          classes: "data-[plan=yearly]:hidden flex items-center justify-center gap-2",
          [
            span(
              classes: "text-[40px] d:text-[50px] font-bold leading-none text-dark-green-25",
              [text(data.price.monthly)],
            ),
            span(
              classes: "text-[16px] d:text-[18px] font-medium leading-[150%] text-gray-20",
              [text("/monthly")],
            ),
          ],
        ),
        div(
          attributes: {"data-plan": "monthly"},
          classes: "data-[plan=monthly]:hidden flex items-center justify-center gap-2",
          [
            span(
              classes: "text-[40px] d:text-[50px] font-bold leading-none text-dark-green-25",
              [text(data.price.yearly)],
            ),
            span(
              classes: " text-[16px] d:text-[18px] font-medium leading-[150%] text-gray-20",
              [text("/yearly")],
            ),
          ],
        ),
        Button(classes: "self-stretch items-center", [text("Choose Plan")])
      ],
    );
  }
}
