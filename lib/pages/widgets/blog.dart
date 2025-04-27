part of '../home.dart';

class BlogSection extends StatelessComponent {
  const BlogSection({super.key});
  static StateProvider<int> blogProvider = StateProvider<int>((ref) => 0);
  static List<BlogContent> blogContent = BlogContent.fromMap(blogData);
  @override
  Iterable<Component> build(BuildContext context) sync* {
    var index = context.watch(blogProvider);
    var total = blogContent.length;
    yield div(classes: "flex flex-col items-start gap-30 self-stretch t:gap-40 d:gap-50", [
      div(classes: 'grid grid-col-1 l:grid-cols-2 gap-20 l:gap-30 self-stretch', [
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
