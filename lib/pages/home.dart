import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../components/counter.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.

final home = StateProvider<int>((ref) => 0);

@client
class Home extends StatelessComponent {
  const Home({super.key});
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      img(src: 'images/logo.svg', width: 80),
      h1([text('Welcome')]),
      p([text('You successfully create a new Jaspr site.')]),
      button(styles: Styles(height: 100.px), onClick: () {
        if (kIsWeb) {
          print("Test : ${context.url}");
        } else {
          print("Test : Hello");
        }
      }, [text('Test')]),
      const Counter(),
    ]);
  }
}
