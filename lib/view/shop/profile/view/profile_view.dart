import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/init/app/base/base_view.dart';
import '../../../../core/init/constants/app_constants.dart';
import '../../../../core/init/constants/image_constants.dart';
import '../../../../product/init/lang/locale_keys.g.dart';
import '../../../../product/utility/size/widget_size.dart';
import '../../../../product/widget/card/shadow_card.dart';
import '../../../../product/widget/padding/paddig_widgets.dart';
import '../viewModel/profile_view_model.dart';

part './sub_view/menu_card.dart';
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
          appBar: AppBar(),
          body: PaddingNormal(
            child: Column(
              children: [
                _ProfileCard(),
                context.emptySizedHeightBoxLow3x,

                ShadowCard(
                  context: context,
                  child: Column(
                    children: [
                      _MenuCard(),
                      _MenuCard(),
                      _MenuCard(),
                      _MenuCard(),
                    ],
                  ),
                )

                //
              ],
            ),
          )),
    );
  }
}
