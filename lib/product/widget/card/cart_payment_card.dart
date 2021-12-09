import 'package:flutter/material.dart';
import 'package:gow_mobile/product/utility/padding/padding_only.dart';
import 'package:gow_mobile/product/utility/padding/padding_symetrict.dart';
import 'package:gow_mobile/product/utility/space_utility.dart';
import 'package:gow_mobile/product/widget/card/shadow_card.dart';
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
                  SizedBox(height: SpaceUtility.spacingM),
                  Row(
                    children: [
                      InkWell(child: Icon(Icons.add)),
                      Padding(
                        padding: PagePaddingSymetrict.horizontalNormal(),
                        child: Text('1'),
                      ),
                      InkWell(child: Icon(Icons.remove)),
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
