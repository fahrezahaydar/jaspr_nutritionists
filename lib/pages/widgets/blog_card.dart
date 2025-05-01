part of '../home.dart';

class BlogCard extends StatelessComponent {
  const BlogCard(this.data);
  final BlogContent data;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'col-center p-24 t:p-30 gap-10-20 box-light-1 rounded-xl grow ', [
      img(
        classes: 'flex w-full rounded-xl self-stretch',
        src: data.media,
      ),
      div(classes: 'col-start gap-18 t:gap-20 d:gap-30', [
        div(classes: 'col-start t:gap-2 d:gap-4 *:text-start', [
          p(classes: " text-gray-20", [
            text(data.subtitle),
          ]),
          h4(
            classes: "truncate w-full ",
            [text(data.title)],
          )
        ]),
        p(classes: "text-start", [
          text(data.body),
        ]),
        ListTile(
          leading: data.avatar,
          title: data.person,
          subtitle: data.date,
        )
      ])
    ]);
  }
}
