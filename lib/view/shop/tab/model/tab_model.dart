import 'package:flutter/material.dart';
import '../../cart_payment/cart_payment_view.dart';
import '../../more/more_view.dart';

import '../../../../product/init/lang/locale_keys.g.dart';
import '../../home/shop_home_view.dart';
import '../../profile/view/profile_view.dart';
import '../../search/view/search_view.dart';

class _TabModel {
  final Widget page;
  final String title;
  final IconData icon;

  _TabModel(this.page, {required this.title, required this.icon});
}

class TabModels {
  late final List<_TabModel> tabItems;

  TabModels.create() {
    tabItems = [
      _TabModel(const ShopHomeView(), icon: Icons.home_outlined, title: LocaleKeys.homeTab_home),
      _TabModel(const SearchView(), icon: Icons.search_outlined, title: LocaleKeys.homeTab_search),
      _TabModel(const CardPaymentView(), icon: Icons.shop_outlined, title: LocaleKeys.homeTab_cart),
      _TabModel(const ProfileView(), icon: Icons.person_outline_outlined, title: LocaleKeys.homeTab_profile),
      _TabModel(const MoreView(), icon: Icons.menu_outlined, title: LocaleKeys.homeTab_more),
    ];
  }
}
