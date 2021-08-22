import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/init/app/base/base_view.dart';
import '../../../../product/base/base_state.dart';
import '../viewModel/splash_view_model.dart';

class SplashView extends StatelessWidget with BaseState {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      model: SplashViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, SplashViewModel value) => Scaffold(
        appBar: AppBar(actions: const [Center(child: CircularProgressIndicator())]),
        body: Center(child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_hl349l.json')),
      ),
    );
  }
}
