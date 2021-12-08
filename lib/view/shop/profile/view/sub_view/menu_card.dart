part of '../profile_view.dart';

class _MenuCard extends StatelessWidget {
  const _MenuCard({Key? key}) : super(key: key);
  final String _title = 'All My Orders';

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: kZero,
      onTap: () {},
      leading: Image.asset(ImageConstatns.instance.iconPath.allOrder, color: context.colorScheme.onBackground),
      title: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                _title,
                style: context.textTheme.subtitle2?.copyWith(color: context.colorScheme.onBackground),
              ),
              const Spacer(),
              SizedBox(
                height: WidgetSize.cardSmallWidth,
                child: _rightBoxArrow(context),
              ),
              const Divider()
            ],
          ),
          const Divider()
        ],
      ),
    );
  }

  FittedBox _rightBoxArrow(BuildContext context) {
    return FittedBox(
      child: TextButton(
          style: TextButton.styleFrom(shape: const CircleBorder(), backgroundColor: context.colorScheme.primary),
          onPressed: () {},
          child: Icon(
            Icons.chevron_right_outlined,
            color: context.colorScheme.onPrimary,
          )),
    );
  }
}
