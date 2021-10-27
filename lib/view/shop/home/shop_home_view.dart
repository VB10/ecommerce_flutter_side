import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../../../core/init/app/base/base_view.dart';
import '../../../product/base/base_state.dart';
import '../../../product/init/lang/locale_keys.g.dart';
import '../../../product/model/product/product_model.dart';
import '../../../product/widget/card/product_normal_card.dart';
import '../../../product/widget/padding/paddig_widgets.dart';
import '../../../product/widget/row/categories_row.dart';
import 'model/category_model.dart';
import 'service/home_shop_service.dart';
import 'view_model/shop_home_view_model.dart';

class ShopHomeView extends StatelessWidget with BaseState {
  const ShopHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ShopHomeViewModel>(
      model: ShopHomeViewModel(HomeShopService(networkManager)),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, ShopHomeViewModel viewModel) => Scaffold(
        appBar: AppBar(
          leading: Observer(
            builder: (_) {
              return viewModel.isPageLoadig ? const Center(child: CircularProgressIndicator()) : const SizedBox();
            },
          ),
          actions: [
            _messageButton(context),
            _notificationButton(),
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            _titleHeaderText(context),
            context.emptySizedHeightBoxLow,
            Observer(builder: (_) => _categoriesProducts(context, viewModel.categories)),
            context.emptySizedHeightBoxLow,
            PaddingNormal(child: Text(LocaleKeys.home_latest.tr(), style: context.textTheme.headline3)),
            context.emptySizedHeightBoxLow,
            Observer(builder: (_) => _latestProducts(context, viewModel.latests)),
            context.emptySizedHeightBoxLow,
            Observer(builder: (_) => _bottomProducts(viewModel.products, context))
          ],
        ),
      ),
    );
  }

  PaddingNormal _titleHeaderText(BuildContext context) {
    return PaddingNormal(
        child: Row(
      children: [
        Text(LocaleKeys.home_categories.tr(), style: context.textTheme.headline3),
        const Spacer(),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.badge, color: context.colorScheme.onPrimary),
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            label: Text(LocaleKeys.home_seeAll.tr(), style: context.textTheme.subtitle2)),
      ],
    ));
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

  Widget _categoriesProducts(BuildContext context, List<CategoryModel> items) {
    return items.isEmpty
        ? SizedBox(height: context.dynamicHeight(0.3), child: LottieBuilder.asset(imageConstants.lottiePath.shopBag))
        : PaddingNormal(
            child: SizedBox(height: context.dynamicHeight(0.15), child: CategoriesRow(items: items.take(4).toList())),
          );
  }

  Widget _latestProducts(BuildContext context, List<LatestModel> items) {
    return items.isEmpty
        ? SizedBox(height: context.dynamicHeight(0.3), child: LottieBuilder.asset(imageConstants.lottiePath.shopCar))
        : SizedBox(
            height: context.dynamicHeight(0.3),
            child: PageView.builder(
              padEnds: false,
              controller: PageController(viewportFraction: 0.9),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CachedNetworkImage(imageUrl: items[index].image ?? '');
              },
            ),
          );
  }

  Widget _bottomProducts(List<ProductModel> products, BuildContext context) {
    return PaddingNormal(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: context.dynamicHeight(0.2)),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductNormalCard(model: products[index]);
        },
      ),
    );
  }
}
