import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

class TabMenu extends StatelessComponent {
  const TabMenu({
    this.classes,
    required this.data,
    required this.provider,
    super.key,
  });
  final List<String> data;
  final String? classes;
  final StateProvider provider;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    var index = context.watch(provider);
    yield div(
      classes: "row-center max-t-xl:overflow-auto max-t-xl:whitespace-nowrap py-4-20 px-main gap-20  rounded-b-[10px] bg-dark-green-20  t-xl:justify-between d:rounded-b-xl",
      [
        for (var i = 0; i < data.length; i++)
          button(
            classes: "flex px-12 py-18 cursor-pointer hover:bg-dark-green-25 items-center rounded-md  border-dark-green-30 text-white ${i == index ? "border bg-dark-green-25" : ""} $classes}",
            onClick: () {
              print(index);
              context.read(provider.notifier).state = i;
            },
            [text(data[i])],
          )
      ],
    );
  }
}
