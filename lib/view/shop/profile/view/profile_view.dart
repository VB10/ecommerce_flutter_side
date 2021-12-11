import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/init/app/base/base_view.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../product/init/lang/locale_keys.g.dart';
import '../../../../product/utility/card/custom_card.dart';
import '../../../../product/utility/space_utility.dart';
import '../../../../product/widget/card/menu_settings_card.dart';
import '../../../../product/widget/padding/paddig_widgets.dart';
import '../viewModel/profile_view_model.dart';

part './sub_view/profile_card.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
      model: ProfileViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, ProfileViewModel viewModel) => Scaffold(
          body: PaddingNormal(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _ProfileCard(),
              context.emptySizedHeightBoxLow3x,

              CustomCard(
                context: context,
                child: Column(
                  children: [
                    MenuSettingCard(
                      title: LocaleKeys.profile_allMyOrder.tr(),
                      assetIconPath: ImageConstatns.instance.iconPath.allOrder,
                    ),
                    MenuSettingCard(
                      title: LocaleKeys.profile_pendingPayments.tr(),
                      assetIconPath: ImageConstatns.instance.iconPath.padingPayment,
                    ),
                    MenuSettingCard(
                      title: LocaleKeys.profile_pendingShipment.tr(),
                      assetIconPath: ImageConstatns.instance.iconPath.padingShipment,
                    ),
                    MenuSettingCard(
                      title: LocaleKeys.profile_finishgedOrders.tr(),
                      assetIconPath: ImageConstatns.instance.iconPath.finished,
                    ),
                  ],
                ),
              ),

              SpaceUtility.spacingM.toEmptyHeight(),

              CustomCard(
                context: context,
                child: Column(
                  children: [
                    MenuSettingCard(
                      title: LocaleKeys.profile_inviteFriends.tr(),
                      assetIconPath: ImageConstatns.instance.iconPath.invite,
                    ),
                    MenuSettingCard(
                      title: LocaleKeys.profile_customerSupport.tr(),
                      assetIconPath: ImageConstatns.instance.iconPath.support,
                    ),
                    MenuSettingCard(
                        title: LocaleKeys.profile_rateApp.tr(), assetIconPath: ImageConstatns.instance.iconPath.rate),
                    MenuSettingCard(
                      title: LocaleKeys.profile_makeASuggestion.tr(),
                      assetIconPath: ImageConstatns.instance.iconPath.suggest,
                    ),
                  ],
                ),
              ),

              //
            ],
          ),
        ),
      )),
    );
  }
}
