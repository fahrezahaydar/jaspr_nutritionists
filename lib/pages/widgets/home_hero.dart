part of '../home.dart';

class HomeHero extends StatelessComponent {
  static const usr = [
    "https://randomuser.me/api/portraits/thumb/women/1.jpg",
    "https://randomuser.me/api/portraits/thumb/women/2.jpg",
    "https://randomuser.me/api/portraits/thumb/women/3.jpg",
  ];
  static var ts = AppTypography();

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'col-center l:flex-row l:min-h-[45vw] max-l:-space-y-28 d:pr-162 d:gap-50 l:pr-66 l:gap-40 ', [
      div(
        classes: 'flex bg-green-70 bg-[url(/images/grid.png)] bg-cover min-h-lvw l:min-h-[45vw] w-full l:min-w-1/2 rounded-b-[30px] l:rounded-br-[40px] d:rounded-br-[50px]',
        [
          div(
            classes: "bg-[url(/images/hero/home.png)] min-h-lvw l:min-h-[45vw] w-full l:min-w-1/2 bg-cover bg-bottom ",
            [],
          ),
        ],
      ),
      div(classes: 'flex flex-col max-l:px-16 gap-10-30 self-center', [
        div(classes: 'col-center l:items-start gap-10-10 max-l:order-2 *:l:text-start', [
          h4(classes: ts.h4Hero, [text('Transform Your ❤️ Health with')]),
          h1(
            classes: "max-l:pb-6 ",
            [text('Personalized Nutrition Coaching')],
          ),
          p(classes: "pb-14 l:pb-20 ", [
            text(
              'Welcome to Nutritionist, your partner in achieving optimal health through personalized nutrition coaching. Our certified nutritionists are here to guide you on your weight loss journey, providing customized plans and ongoing support. Start your transformation today and experience the power of personalized nutrition coaching.',
            ),
          ]),
          div(classes: 'flex items-center gap-20 l:items-start', [
            Button(
              onClick: () {},
              [text("Get Started")],
            ),
            Button.secondary([text("Book a Demo")])
          ])
        ]),
        div(classes: 'flex max-l:flex-col gap-8 items-center max-l:order-1', [
          div(
            classes: 'flex shrink -space-x-17 d:-space-x-20 px-8 d:px-10 py-6 d:py-8 border border-green-70 rounded-full bg-white ',
            Avatar.fromList(usr),
          ),
          p(classes: 'text-[16px] l:text-[20px]', [
            span(classes: "font-bold text-dark-green-40", [text('430+ ')]),
            span(classes: "font-bold text-dark-green-20", [text('Happy Customers')]),
          ]),
        ])
      ]),
    ]);
  }
}
