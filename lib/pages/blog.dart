import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../components/button.dart';
import '../components/page_header.dart';
import '../components/tab_menu.dart';
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
      id: "blog",
      classes: "py-main col-start gap-10-30",
      [
        section(classes: "col-start px-main", [
          PageHeader(header),
          TabMenu(
            data: list,
            provider: blogpostProvider,
          ),
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
            classes: "common-grid px-main gap2-10-20",
            [
              for (var i = 0; i < data.length; i++)
                BlogCard(
                  data[i],
                ),
            ],
          );
        }),
      ],
    );
  }
}
