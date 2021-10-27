import 'package:flutter/material.dart';

import '../../../../product/init/lang/locale_keys.g.dart';
import '../../home/shop_home_view.dart';
import '../../profile/profile_view.dart';

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
      _TabModel(Container(), icon: Icons.search_outlined, title: LocaleKeys.homeTab_search),
      _TabModel(Container(), icon: Icons.shop_outlined, title: LocaleKeys.homeTab_cart),
      _TabModel(const ProfileView(), icon: Icons.person_outline_outlined, title: LocaleKeys.homeTab_profile),
      _TabModel(Container(), icon: Icons.menu_outlined, title: LocaleKeys.homeTab_more),
    ];
  }
}
