part of '../search_view.dart';

class _ProductShortCard extends StatelessWidget {
  const _ProductShortCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 50.w,
        child: const Card(
            child: ListTile(
          dense: true,
          leading: CircleAvatar(),
          title: Text('Title'),
          subtitle: Text('Desc'),
        )));
  }
}
