import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';
import '../../../../product/model/product/product_model.dart';
import '../model/category_model.dart';
import '../service/home_shop_service.dart';

part 'shop_home_view_model.g.dart';

class ShopHomeViewModel = _ShopHomeViewModelBase with _$ShopHomeViewModel;

abstract class _ShopHomeViewModelBase with Store, BaseViewModel {
  late final IHomeShopService _homeShopService;

  @observable
  List<CategoryModel> categories = [];

  @observable
  List<LatestModel> latests = [];

  @observable
  List<ProductModel> products = [];

  @observable
  bool isPageLoadig = true;

  _ShopHomeViewModelBase(IHomeShopService homeShopService) {
    _homeShopService = homeShopService;
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    fetchItems();
  }

  Future<void> fetchItems() async {
    await Future.any([_fetchLatest(), _fetchCategories(), _fetchProducts()]);
    _changeLoading();
  }

  @action
  Future<void> _fetchLatest() async {
    latests = await _homeShopService.fetchLatest();
  }

  @action
  Future<void> _fetchCategories() async {
    categories = await _homeShopService.fetchCategores();
  }

  @action
  Future<void> _fetchProducts() async {
    products = await _homeShopService.fetchProducts();
    print(products);
  }

  @action
  void _changeLoading() {
    isPageLoadig = !isPageLoadig;
  }
}
