import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../components/button.dart';
import '../components/page_header.dart';
import '../components/tab_menu.dart';
import '../constants/styles.dart';
import '../data/blog_raw.dart';
import '../layout/page.dart';
import '../model/blog.dart';
import '../model/export.dart';

part "widgets/blogpost_card.dart";

@client
class Blog extends StatelessComponent {
  const Blog({super.key});
  static Header get header => Header.fromMap(blogHeader);
  static List<BlogData> get listData => blogData.map((i) {
        return BlogData.fromMap(i);
      }).toList();

  static StateProvider<int> blogpostProvider = StateProvider<int>((ref) => 0);
  static List<String> get list => blogList;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield Page(
      classes: "page py-50 l:py-80 d:py-100",
      [
        div(classes: "flex flex-col self-stretch", [
          PageHeader(header),
          section([
            TabMenu(
              data: list,
              provider: blogpostProvider,
            ),
          ]),
        ]),
        Builder(builder: (context) sync* {
          var val = context.watch(blogpostProvider);
          List<BlogData> data;
          if (val == 0) {
            data = listData;
          } else {
            data = listData.where((blog) => blog.category == list[val]).toList();
          }
          yield section(
            classes: "self-stretch ${St.gap_30}",
            [
              div(
                classes: "grid grid-cols-1 rounded-[10px] d:rounded-xl border border-green-85 l:grid-cols-2  self-stretch ",
                [
                  for (var i = 0; i < data.length; i++)
                    BlogCard(
                      data[i],
                    ),
                ],
              )
            ],
          );
        }),
      ],
    );
  }
}
