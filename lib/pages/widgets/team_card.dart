part of "../team.dart";

class TeamCard extends StatelessComponent {
  const TeamCard(this.data, {super.key});
  final TeamMember data;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: "col-start -space-y-52 flex-1 ", [
      img(
        classes: "object-cover object-bottom round-10 bg-green-70 aspect-2/3 bg-[url(/images/grid.png)]",
        src: data.image,
      ),
      div(classes: "flex flex-col gap-2 p-20 l:p-30 max-w-[80%] rounded-tr-[20px] bg-green-95 *:text-start", [
        h5([text(data.name)]),
        p([text(data.job)]),
      ])
    ]);
  }
}
