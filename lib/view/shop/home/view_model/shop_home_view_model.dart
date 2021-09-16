import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';

part 'shop_home_view_model.g.dart';

class ShopHomeViewModel = _ShopHomeViewModelBase with _$ShopHomeViewModel;

abstract class _ShopHomeViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}
}
