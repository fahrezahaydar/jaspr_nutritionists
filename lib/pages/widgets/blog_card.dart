part of '../home.dart';

class BlogCard extends StatelessComponent {
  const BlogCard(this.data);
  final BlogContent data;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: ' flex flex-col p-24 t:p-30 d:p-40 gap-20 d:gap-40 border border-green-85 rounded-[12px] items-start grow bg-green-95', [
      img(
        classes: 'flex w-full rounded-[12px] self-stretch',
        src: data.media,
      ),
      div(classes: 'flex flex-col items-start self-stretch gap-18 t:gap-20, d:gap-30', [
        div(classes: 'flex flex-col items-start self-stretch t:gap-2 d:gap-4 ', [
          p(classes: "text-start text-gray-20", [
            text(data.subtitle),
          ]),
          h4(
            classes: "text-start truncate w-full ",
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
