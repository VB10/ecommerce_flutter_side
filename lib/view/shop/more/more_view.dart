import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/init/constants/image_constants.dart';
import '../../../product/init/lang/locale_keys.g.dart';
import '../../../product/utility/card/custom_card.dart';
import '../../../product/utility/padding/padding_symetrict.dart';
import '../../../product/utility/space_utility.dart';
import '../../../product/widget/card/menu_settings_card.dart';
import '../../../product/widget/text/title_text.dart';

class MoreView extends StatelessWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PagePaddingSymetrict.horizontalNormal(),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(LocaleKeys.homeTab_more.tr(), context: context),
            SpaceUtility.spacingM.toEmptyHeight(),
            CustomCard(
              context: context,
              child: Column(
                children: [
                  MenuSettingCard(
                    title: LocaleKeys.more_shippingAdress.tr(),
                    assetIconPath: ImageConstatns.instance.iconPath.shipping,
                  ),
                  MenuSettingCard(
                    title: LocaleKeys.more_paymentMethod.tr(),
                    assetIconPath: ImageConstatns.instance.iconPath.padingPayment,
                  ),
                  MenuSettingCard(
                    title: LocaleKeys.more_currency.tr(),
                    assetIconPath: ImageConstatns.instance.iconPath.currency,
                    rightDescription: 'USD',
                  ),
                  MenuSettingCard(
                    title: LocaleKeys.more_language.tr(),
                    assetIconPath: ImageConstatns.instance.iconPath.language,
                    rightDescription: 'English',
                  )
                ],
              ),
            ),
            SpaceUtility.spacingM.toEmptyHeight(),
            CustomCard(
              context: context,
              child: Column(
                children: [
                  MenuSettingCard(
                    title: LocaleKeys.more_notificationSettings.tr(),
                    assetIconPath: ImageConstatns.instance.iconPath.notification,
                  ),
                  MenuSettingCard(
                    title: LocaleKeys.more_privacy.tr(),
                    assetIconPath: ImageConstatns.instance.iconPath.privacy,
                  ),
                  MenuSettingCard(
                    title: LocaleKeys.more_faq.tr(),
                    assetIconPath: ImageConstatns.instance.iconPath.faq,
                  ),
                  MenuSettingCard(
                    title: LocaleKeys.more_legal.tr(),
                    assetIconPath: ImageConstatns.instance.iconPath.legal,
                  )
                ],
              ),
            ),
            SpaceUtility.spacingM.toEmptyHeight(),
            TextButton(
                onPressed: () {},
                child: Center(
                    child: Text(
                  'LOG OUT',
                  style: context.textTheme.subtitle2?.copyWith(color: context.colorScheme.error),
                )))
          ],
        ),
      ),
    );
  }
}
