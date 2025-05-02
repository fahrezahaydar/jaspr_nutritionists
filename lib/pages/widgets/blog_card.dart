part of '../home.dart';

class BlogCard extends StatelessComponent {
  const BlogCard(this.data);
  final BlogContent data;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'col-center p-24 gap-20 d:gap-40 box-light-1 round-10', [
      img(
        classes: 'flex w-full rounded-10',
        src: data.media,
      ),
      div(classes: 'col-start gap-18 t:gap-20 d:gap-30', [
        div(classes: 'col-start gap-2-0', [
          p(classes: " text-gray-20", [text(data.subtitle)]),
          h4([text(data.title)])
        ]),
        p([text(data.body)]),
        ListTile(
          leading: data.avatar,
          title: data.person,
          subtitle: data.date,
        )
      ])
    ]);
  }
}
