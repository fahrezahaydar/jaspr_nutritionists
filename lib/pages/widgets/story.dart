part of '../about.dart';

class Story extends StatelessComponent {
  const Story({super.key});
  static List<StoryData> stories = storyData.map((data) => StoryData.fromMap(data)).toList();
  static StateProvider<int> storyProvider = StateProvider<int>((ref) => 0);

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var i = context.watch(storyProvider);
    var totalItems = stories.length;
    yield div(classes: "flex flex-col items-start gap-30 self-stretch l:gap-40 d:gap-50", [
      div(
        classes: "flex flex-col items-start self-stretch rounded-xl border border-green-90 overflow-clip",
        [
          StoryWidget(i, stories[i]),
          StoryWidget(i + 1, stories[i + 1]),
        ],
      ),
      NavigationPanel(
        leftClick: () {
          if (i > 1) {
            context.read(storyProvider.notifier).state -= 2;
          } else {
            context.read(storyProvider.notifier).state = 0;
          }
        },
        rightClick: () {
          if (i + 2 < totalItems - 2) {
            context.read(storyProvider.notifier).state += 2;
          } else {
            context.read(storyProvider.notifier).state = totalItems - 2;
          }
        },
        currentIndex: "${i + 1}",
        totalItems: "$totalItems",
        classes: "self-stretch",
      )
    ]);
  }
}
