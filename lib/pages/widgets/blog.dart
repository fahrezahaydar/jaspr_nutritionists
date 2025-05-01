part of '../home.dart';

class BlogSection extends StatelessComponent {
  const BlogSection({super.key});
  static StateProvider<int> blogProvider = StateProvider<int>((ref) => 0);
  static List<BlogContent> blogContent = BlogContent.fromMap(blogData);
  @override
  Iterable<Component> build(BuildContext context) sync* {
    var index = context.watch(blogProvider);
    var total = blogContent.length;
    yield div(classes: "col-center gap-10-30 ", [
      div(classes: 'common-grid gap-10-20', [
        BlogCard(blogContent[index]),
        BlogCard(blogContent[index + 1]),
      ]),
      NavigationPanel(
        leftClick: () {
          if (index > 1) {
            context.read(blogProvider.notifier).state -= 2;
          } else {
            context.read(blogProvider.notifier).state = 0;
          }
        },
        rightClick: () {
          if (index + 2 < total - 2) {
            context.read(blogProvider.notifier).state += 2;
          } else {
            context.read(blogProvider.notifier).state = total - 2;
          }
        },
        currentIndex: "${(index / 2).round() + 1}",
        totalItems: "${(total / 2).round()}",
      )
    ]);
  }
}
