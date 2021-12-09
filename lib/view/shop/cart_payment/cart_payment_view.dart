import 'package:flutter/material.dart';
import 'package:gow_mobile/product/utility/padding/padding_all.dart';
import 'package:gow_mobile/product/utility/padding/padding_only.dart';
import 'package:gow_mobile/product/utility/padding/padding_symetrict.dart';
import 'package:gow_mobile/product/utility/size/widget_size.dart';
import 'package:gow_mobile/product/utility/space_utility.dart';
import 'package:gow_mobile/product/widget/button/login_button.dart';
import 'package:gow_mobile/product/widget/card/cart_payment_card.dart';
import 'package:gow_mobile/product/widget/card/shadow_card.dart';
import 'package:gow_mobile/product/widget/text/title_text.dart';
import 'package:sizer/sizer.dart';

import 'package:kartal/kartal.dart';
import 'package:easy_localization/easy_localization.dart';

class CardPaymentView extends StatelessWidget {
  const CardPaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: PagePaddingSymetrict.horizontalNormal(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText('Cart', context: context),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CardPaymentCard();
                },
              ),
            ),
            Padding(
              padding: PagePaddingSymetrict.verticalLowNormal(),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TOTAL',
                          style: context.textTheme.bodyText1,
                        ),
                        context.emptySizedHeightBoxLow,
                        Text(
                          '\$81.57',
                          style: context.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        context.emptySizedHeightBoxLow,
                        Text(
                          'Free Domestic Shipping',
                          style: context.textTheme.bodyText2,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: RoundedRectangleBorder(borderRadius: context.highBorderRadius),
                            primary: context.colorScheme.error),
                        onPressed: () {},
                        child: Stack(
                          fit: StackFit.loose,
                          children: [
                            Positioned.fill(
                                right: 0,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: context.colorScheme.onSecondary,
                                      child: FittedBox(
                                        child: Icon(
                                          Icons.chevron_right,
                                          color: context.colorScheme.error,
                                        ),
                                      )),
                                )),
                            Row(
                              children: [
                                const Spacer(),
                                Text('data'),
                                const Spacer(),
                              ],
                            ),
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
