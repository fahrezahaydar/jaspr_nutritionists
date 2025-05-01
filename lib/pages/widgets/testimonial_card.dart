part of '../home.dart';

class TestimonialCard extends StatelessComponent {
  const TestimonialCard(this.data, {this.classes = ""});
  final TestimonialContent data;
  final String classes;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'col-center justify-between round-10 box-light-2 $classes',
      [
        div(
          classes: "col-start gap-10-30 p-10-20 border-b border-green-90",
          [
            img(classes: "size-34 d:size-40", src: "images/svg/testi.svg"),
            p(classes: "text-start self-stretch", [text(data.testimonial)]),
          ],
        ),
        div(classes: 'px-10-20 py-18 l:py-20 d:py-30 row-center gap-10 d:gap-12 bg-green-95', [
          Avatar(data.avatar),
          p([text(data.name)]),
        ]),
      ],
    );
  }
}
