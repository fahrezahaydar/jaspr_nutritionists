part of '../about.dart';

class Story extends StatelessComponent {
  const Story({super.key});
  static List<StoryData> stories = storyData.map((data) => StoryData.fromMap(data)).toList();
  static StateProvider<int> storyProvider = StateProvider<int>((ref) => 0);

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var i = context.watch(storyProvider);
    var totalItems = stories.length;
    yield div(classes: "col-start gap-10-30", [
      div(
        classes: "col-start round-10 box-light-3 overflow-clip",
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
      )
    ]);
  }
}
