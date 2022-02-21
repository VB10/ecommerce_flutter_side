import 'package:flutter/material.dart';
import '../../utility/padding/padding_only.dart';
import '../../utility/padding/padding_symetrict.dart';
import '../../utility/space_utility.dart';
import 'shadow_card.dart';
import 'package:kartal/src/context_extension.dart';
import 'package:sizer/sizer.dart';

class CardPaymentCard extends StatelessWidget {
  const CardPaymentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePaddingOnly.onlyTopNormal(),
      child: ListTile(
        title: Row(
          children: [
            SizedBox(
                height: 15.h,
                width: 15.h,
                child: FittedBox(
                    child: ShadowCard.circle(
                  context: context,
                  child: PhysicalModel(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      elevation: 5,
                      child: CircleAvatar(backgroundColor: context.colorScheme.onSecondary)),
                ))),
            SizedBox(width: 5.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Faux Sued Ankle Boots', style: context.textTheme.subtitle1),
                  Text('7, Hot Pink', style: context.textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w100)),
                  const SizedBox(height: SpaceUtility.spacingM),
                  Text(
                    '\$49.99',
                    style: context.textTheme.subtitle1?.copyWith(color: context.colorScheme.onError),
                  ),
                  const SizedBox(height: SpaceUtility.spacingM),
                  Row(
                    children: [
                      const InkWell(child: Icon(Icons.add)),
                      Padding(
                        padding: PagePaddingSymetrict.horizontalNormal(),
                        child: const Text('1'),
                      ),
                      const InkWell(child: Icon(Icons.remove)),
                    ],
                  ),
                  const Divider()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
