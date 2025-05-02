part of '../home.dart';

class HomeHero extends StatelessComponent {
  static const usr = [
    "https://randomuser.me/api/portraits/thumb/women/1.jpg",
    "https://randomuser.me/api/portraits/thumb/women/2.jpg",
    "https://randomuser.me/api/portraits/thumb/women/3.jpg",
  ];

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'col-center l:flex-row l:min-h-[45vw] max-l:-space-y-28 d:pr-162 d:gap-50 l:pr-80 l:gap-40 ', [
      div(classes: 'flex grid-bg hero-picture rounded-b-[30px] l:rounded-br-[40px] d:rounded-br-[50px]', [
        div(classes: "bg-[url(/images/hero/home.png)] hero-picture ", []),
      ]),
      div(id: "hero-container", classes: 'col-center justify-center max-t-xl:px-16 max-l:px-80 gap-20-30', [
        div(id: "hero-sub-container", classes: 'col-center l:items-start gap-10-30 max-l:order-2 ', [
          div(id: "hero-text-container", classes: "col-center l:items-start gap2-4-16 *:max-l:text-center", [
            div(classes: "col-center l:items-start gap2-4-10 *:max-l:text-center", [
              h4(classes: "border-b-3 border-green-70 text-1 leading-none py-8", [
                text('Transform Your ❤️ Health with'),
              ]),
              h1([text('Personalized Nutrition Coaching')]),
            ]),
            p([
              text(
                'Welcome to Nutritionist, your partner in achieving optimal health through personalized nutrition coaching. Our certified nutritionists are here to guide you on your weight loss journey, providing customized plans and ongoing support. Start your transformation today and experience the power of personalized nutrition coaching.',
              )
            ]),
          ]),
          div(id: "hero-button-container", classes: 'row-center gap2-6-14 max-l:justify-center', [
            Button(
              onClick: () {},
              [text("Get Started")],
            ),
            Button.secondary([text("Book a Demo")])
          ])
        ]),
        div(classes: 'col-center l:flex-row gap-2-4 max-l:order-1', [
          div(
            classes: 'flex -space-x-17 d:-space-x-20 px-8 d:px-10 py-6 d:py-8 box-light-2 border-green-70 rounded-full  ',
            Avatar.fromList(usr),
          ),
          h6([
            span(classes: "font-bold text-dark-green-40", [text('430+ ')]),
            span(classes: "text-dark-green-20", [text('Happy Customers')]),
          ]),
        ])
      ]),
    ]);
  }
}
