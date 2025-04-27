part of '../home.dart';

class HomeHero extends StatelessComponent {
  static const usr = [
    "https://randomuser.me/api/portraits/thumb/women/1.jpg",
    "https://randomuser.me/api/portraits/thumb/women/2.jpg",
    "https://randomuser.me/api/portraits/thumb/women/3.jpg",
  ];
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'flex max-l:-space-y-28 d:pr-[162px] items-center d:gap-[50px] self-stretch l:pr-[66px] l:gap-[40px] max-l:flex-col',
      [
        img(
          classes: 'flex bg-green-70 bg-[url(/images/grid.png)] object-cover w-full l:w-[54%] rounded-b-[30px] l:rounded-br-[40px] d:rounded-br-[50px]',
          loading: MediaLoading.lazy,
          src: 'images/hero/home.png',
        ),
        div(
          classes: 'flex flex-col max-l:px-16 gap-30 l:gap-50 self-center',
          [
            div(
              classes: 'flex flex-col items-center l:items-start gap-10 xl:gap-20 max-l:order-2 *:l:text-start',
              [
                h4(
                  classes: 'border-b-4 border-green-70 text-dark-green-15 text-[18px] l:text-[28px] ',
                  [text('Transform Your ❤️ Health with')],
                ),
                h1(
                  classes: "font-black max-l:mb-6 ",
                  [text('Personalized Nutrition Coaching')],
                ),
                p(classes: "mb-14 l:mb-20 ", [
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
              ],
            ),
            div(
              classes: 'flex max-l:flex-col gap-8 items-center max-l:order-1',
              [
                div(
                  classes: 'flex shrink -space-x-17 d:-space-x-20 px-8 d:px-10 py-6 d:py-8 border border-green-70 rounded-full bg-white ',
                  [
                    for (var i in usr)
                      img(
                        classes: 'size-40 d:size-50 rounded-full',
                        loading: MediaLoading.lazy,
                        src: i,
                      ),
                  ],
                ),
                p(
                  classes: 'text-[16px] l:text-[20px]',
                  [
                    span(
                      classes: "font-bold text-dark-green-40",
                      [text('430+ ')],
                    ),
                    span(
                      classes: "font-bold text-dark-green-20",
                      [text('Happy Customers')],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
