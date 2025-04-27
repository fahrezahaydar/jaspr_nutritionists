part of '../home.dart';

class TestimonialCard extends StatelessComponent {
  const TestimonialCard(this.data, {this.classes = ""});
  final TestimonialContent data;
  final String classes;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'flex flex-col items-center justify-between self-stretch rounded-[10px] d:rounded-l bg-green-97 border border-green-90 $classes',
      [
        div(
          classes: "flex flex-col items-start gap-40 self-stretch d:gap-50 p-24 t:p-30 d:p-40 border-b border-green-90",
          [
            img(
              classes: "size-34 d:size-40",
              src: "images/svg/testi.svg",
            ),
            p(classes: "text-start self-stretch", [
              text(data.testimonial),
            ]),
          ],
        ),
        div(classes: 'flex px-24 t-xl:px-30 d:px-40 py-18 l:py-20 d:py-30 items-center gap-10 d:gap-12 self-stretch bg-green-95', [
          Avatar(data.avatar),
          p(
            classes: "max-t:text-[16px]",
            [text(data.name)],
          ),
        ]),
      ],
    );
  }
}
