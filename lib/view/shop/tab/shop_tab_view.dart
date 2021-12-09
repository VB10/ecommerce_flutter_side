import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'model/tab_model.dart';

class ShopTabView extends StatelessWidget {
  ShopTabView({Key? key}) : super(key: key);

  final _items = TabModels.create().tabItems;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(),
        body: TabBarView(children: _items.map((e) => e.page).toList()),
        bottomNavigationBar: BottomAppBar(
          child: TabBar(tabs: _items.map((e) => Tab(text: e.title.tr(), icon: Icon(e.icon))).toList()),
        ),
      ),
    );
  }
}
