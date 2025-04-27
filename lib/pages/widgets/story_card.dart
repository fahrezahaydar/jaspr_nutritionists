part of '../about.dart';

class StoryWidget extends StatelessComponent {
  const StoryWidget(this.i, this.data, {super.key});
  final StoryData data;
  final int i;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: "flex flex-col items-start self-stretch t-xl:flex-row-reverse t-xl:odd:flex-row t-xl:even:**:text-end",
      [
        img(
          classes: "self-stretch w-full t-xl:w-[calc(50%-6px)]  border-green-70  ",
          src: "images/png/${data.image}.png",
        ),
        div(
          classes: "self-stretch h-12 w-full bg-green-70 t-xl:w-12 t-xl:h-auto d:w-18",
          [],
        ),
        div(
          classes: "flex flex-col items-start t-xl:w-[calc(50%-6px)] self-stretch justify-center p-30 l:p-60 d:p-80 gap-20 l:gap-30 d:gap-40 ",
          [
            span(
              classes: "text-start py-8 border-b-3 border-green-70 self-stretch font-sans font-semibold leading-none text-dark-green-15 text-xl l:text-2xl d:text-[28px] items-start ",
              [text(data.title)],
            ),
            p(
              classes: "text-start self-stretch text-gray-20 ",
              [text(data.text)],
            ),
            p(
              classes: "text-start self-stretch text-gray-20 font-semibold ",
              [text(data.date)],
            ),
          ],
        ),
      ],
    );
  }
}
