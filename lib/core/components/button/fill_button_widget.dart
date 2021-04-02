import '../../extensions/context_extension.dart';
import '../../init/app/app_widget_helper.dart';
import 'package:flutter/material.dart';

class FullWidthButton extends StatelessWidget {
  final Color? color;
  final String? title;
  final Widget? icon;
  final VoidCallback? onPressed;

  const FullWidthButton({Key? key, this.color, this.title, this.icon, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return buildRaisedButton(context);
  }

  RaisedButton buildRaisedButton(BuildContext context) {
    return RaisedButton(
        onPressed: onPressed,
        color: color,
        shape: StadiumBorder(),
        child: Container(
          width: context.width,
          height: context.height * 0.05,
          constraints: AppWidgetHelper.instance!.buttonBoxConstraint,
          child: Stack(
            children: [buildCenterTitle(context), buildPositionedRightButton(context)],
          ),
        ));
  }

  Center buildCenterTitle(context) => Center(child: buildTextTitle(context));

  Positioned buildPositionedRightButton(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: context.height * 0.01,
      top: context.height * 0.01,
      child: buildRightIcon,
    );
  }

  Widget get buildRightIcon => icon ?? Icon(Icons.keyboard_arrow_right);

  Text buildTextTitle(BuildContext context) => Text(
        title!,
        style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
      );
}
