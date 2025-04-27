part of '../home.dart';

class Testimonial extends StatelessComponent {
  const Testimonial({super.key});
  static StateProvider<int> teestimonialProvider = StateProvider<int>((ref) => 0);
  static List<TestimonialContent> testimonialContent = TestimonialContent.fromMap(testimonialData);
  @override
  Iterable<Component> build(BuildContext context) sync* {
    var i = context.watch(teestimonialProvider);
    var totalItems = testimonialContent.length;
    yield div(
      classes: "flex flex-col items-start gap-30 self-stretch l:gap-40 d:gap-50",
      [
        div(classes: 'grid grid-cols-1 self-stretch t-xl:grid-cols-2 gap-20 l:grid-cols-3 d:gap-30 *:max-l:last:hidden *:max-t-xl:nth-last-2:hidden', [
          TestimonialCard(testimonialContent[i]),
          TestimonialCard(testimonialContent[i + 1 < totalItems ? i + 1 : i]),
          TestimonialCard(testimonialContent[i + 2 < totalItems ? i + 2 : 1]),
        ]),
        NavigationPanel(
          leftClick: () {
            int column;
            if (web.window.innerWidth >= 1280) {
              column = 3;
            } else if (web.window.innerWidth >= 1024) {
              column = 2;
            } else {
              column = 1;
            }

            if (i > column - 1) {
              context.read(teestimonialProvider.notifier).state -= column;
            } else {
              context.read(teestimonialProvider.notifier).state = 0;
            }
          },
          rightClick: () {
            int column;
            if (web.window.innerWidth >= 1280) {
              column = 3;
            } else if (web.window.innerWidth >= 1024) {
              column = 2;
            } else {
              column = 1;
            }

            if (i + column < totalItems - column) {
              context.read(teestimonialProvider.notifier).state += column;
            } else {
              context.read(teestimonialProvider.notifier).state = totalItems - column;
            }
          },
          currentIndex: "${i + 1}",
          totalItems: "$totalItems",
          classes: "self-stretch",
        ),
      ],
    );
  }
}
