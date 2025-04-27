part of "../blog.dart";

class BlogCard extends StatelessComponent {
  const BlogCard(this.data, {super.key});
  final BlogData data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: 'flex flex-col self-stretch bg-green-95 border-b-green-85 l:even:border-r-green-85',
      [
        div(
          classes: 'flex flex-col self-stretch gap-30 l:gap-40 d:gap-50 px-30 pt-30 l:px-40 l:pt-40 d:px-50 d:pt-50',
          [
            h5(
              classes: "py-8 border-green-70 d:py-10 border-b-3 self-start",
              [text(data.category)],
            ),
            div(classes: "flex self-stretch pl-36 t:pl-167", [
              img(
                classes: "self-end rounded-t-xl aspect-2/1 object-cover w-full",
                src: data.image,
              ),
            ])
          ],
        ),
        div(classes: "flex flex-col self-stretch ${St.p_30} gap-24 d:gap-30  l:flex-row l:items-center", [
          div(
            classes: "flex flex-col  gap-8 d:gap-10 ",
            [
              h5(classes: "text-start", [text(data.title)]),
              p(classes: "text-start", [text(data.subtitle)]),
            ],
          ),
          Button(classes: "whitespace-nowrap self-start", [text("Read More")])
        ])
      ],
    );
  }
}
