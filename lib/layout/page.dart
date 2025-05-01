import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import 'banner.dart';
import 'footer.dart';
import 'header.dart';

class Page extends StatelessComponent {
  const Page(this.children, {this.id, this.classes, super.key});
  final List<Component> children;
  final String? id;
  final String? classes;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield const Banner();
    yield const Header();
    yield ProviderScope(
      child: main_(
        classes: classes,
        id: id,
        children,
      ),
    );
    yield main_(classes: "hidden min-d-xl:flex col-center justify-center fixed top-0 left-0 z-4 w-full h-full", [
      div(
        classes: "fixed top-0 left-0 w-full h-full bg-[#000000CC] backdrop-blur-md",
        [],
      ),
      div(
        classes: "flex flex-col w-1/3 p-64 gap-36 bg-green-95 border-4 z-10 border-green-85 rounded-3xl",
        [
          h1(classes: "font-icon-out font-thin text-[180px]", [text("error_outline")]),
          div(classes: "col-center gap-24", [
            h1(classes: "text-[56px]", [text("Error Occured")]),
            h4(
              classes: "text-gray-30 font-normal",
              [text("Your Screen Resolution Exceeds the Maximum Supported by Our Website. Please resize your browser window or resolution to continue")],
            )
          ]),
        ],
      ),
    ]);
    yield const Footer();
  }
}
