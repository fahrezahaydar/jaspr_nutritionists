part of "../blog.dart";

class BlogCard extends StatelessComponent {
  const BlogCard(this.data, {super.key});
  final BlogData data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'col-start bg-green-95 border-b-green-85 l:even:border-r-green-85',
      [
        div(
          classes: 'col-start gap-10-30 px-10-30 pt-10-30',
          [
            h5(
              classes: "py-8 border-green-70 d:py-10 border-b-3 self-start",
              [text(data.category)],
            ),
            img(
              classes: "self-end rounded-t-xl aspect-2/1 object-cover w-4/5",
              src: data.image,
            ),
          ],
        ),
        div(classes: "col-start p-10-30 gap-24 d:gap-30  l:flex-row ", [
          div(
            classes: "flex flex-col  gap-8 d:gap-10  *:text-start",
            [
              h5([text(data.title)]),
              p([text(data.subtitle)]),
            ],
          ),
          Button(classes: "whitespace-nowrap l:self-center", [text("Read More")])
        ])
      ],
    );
  }
}
