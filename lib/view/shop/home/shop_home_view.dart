import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../product/init/lang/locale_keys.g.dart';
import '../../../product/widget/padding/paddig_widgets.dart';

class ShopHomeView extends StatelessWidget {
  const ShopHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _messageButton(context),
          _notificationButton(),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          PaddingNormal(child: Text(LocaleKeys.home_categories.tr(), style: context.textTheme.headline3)),
          context.emptySizedHeightBoxLow,
          _categoriesProducts(context),
          context.emptySizedHeightBoxLow,
          PaddingNormal(child: Text(LocaleKeys.home_latest.tr(), style: context.textTheme.headline3)),
          context.emptySizedHeightBoxLow,
          _latestProducts(context),
          context.emptySizedHeightBoxLow,
          _bottomProducts()
        ],
      ),
    );
  }

  IconButton _messageButton(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Stack(
          children: [
            const Icon(Icons.message_outlined),
            Positioned(
              bottom: 0,
              left: 0,
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.red,
                child: FittedBox(
                    child: Text('5',
                        style: context.textTheme.subtitle1?.copyWith(color: context.colorScheme.onSecondary))),
              ),
            )
          ],
        ));
  }

  IconButton _notificationButton() => IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_outlined));

  SingleChildScrollView _categoriesProducts(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: PaddingNormal(
        child: SizedBox(
          height: context.dynamicHeight(0.15),
          child: Row(
            children: [
              Placeholder(),
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _latestProducts(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: PaddingNormal(
        child: SizedBox(
          height: context.dynamicHeight(0.3),
          child: Row(
            children: [
              Placeholder(),
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }

  GridView _bottomProducts() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: Text('$index'),
        );
      },
    );
  }
}
