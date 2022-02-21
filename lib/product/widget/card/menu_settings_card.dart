import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

import '../../../core/init/constants/app_constants.dart';
import '../../utility/size/widget_size.dart';

class MenuSettingCard extends StatelessWidget {
  const MenuSettingCard({
    Key? key,
    required this.assetIconPath,
    required this.title,
    this.rightDescription,
  }) : super(key: key);

  final String assetIconPath;
  final String title;
  final String? rightDescription;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: kZero,
      onTap: () {},
      leading: Image.asset(assetIconPath, color: context.colorScheme.onBackground),
      title: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: context.textTheme.subtitle2?.copyWith(color: context.colorScheme.onBackground),
              ),
              const Spacer(),
              Text(
                rightDescription ?? '',
                style: context.textTheme.subtitle2?.copyWith(color: context.colorScheme.onBackground),
              ),
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
