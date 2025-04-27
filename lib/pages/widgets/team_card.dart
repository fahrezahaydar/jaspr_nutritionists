part of "../team.dart";

class TeamCard extends StatelessComponent {
  const TeamCard(this.data, {super.key});
  final TeamMember data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes: "flex flex-col -space-y-52 self-stretch flex-1 grow ",
      [
        img(
          classes: "self-stretch object-cover object-bottom rounded-[10px] d:rounded-xl bg-green-70 aspect-2/3 bg-[url(/images/grid.png)] object-cover]",
          src: data.image,
        ),
        div(
          classes: "flex flex-col gap-2 p-20 l:p-30 max-w-[80%] rounded-tr-[20px] bg-green-95",
          [
            h5(classes: "text-start", [text(data.name)]),
            p(classes: "text-start", [text(data.job)])
          ],
        )
      ],
    );
  }
}
