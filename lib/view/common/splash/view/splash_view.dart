import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/init/app/base/base_view.dart';
import '../../../../product/base/base_state.dart';
import '../../../../product/init/lang/locale_keys.g.dart';
import '../viewModel/splash_view_model.dart';

class SplashPage extends StatelessWidget with BaseState {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      model: SplashViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, SplashViewModel value) => Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Center(child: Lottie.asset(imageConstants.lottiePath.shopSplash)),
              Positioned.fill(
                bottom: context.lowValue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CircularProgressIndicator(),
                    context.emptySizedWidthBoxLow,
                    Text(
                      LocaleKeys.splash_loading.tr(),
                      style: context.textTheme.subtitle1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
