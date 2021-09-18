// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShopHomeViewModel on _ShopHomeViewModelBase, Store {
  final _$categoriesAtom = Atom(name: '_ShopHomeViewModelBase.categories');

  @override
  List<CategoryModel> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(List<CategoryModel> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$latestsAtom = Atom(name: '_ShopHomeViewModelBase.latests');

  @override
  List<LatestModel> get latests {
    _$latestsAtom.reportRead();
    return super.latests;
  }

  @override
  set latests(List<LatestModel> value) {
    _$latestsAtom.reportWrite(value, super.latests, () {
      super.latests = value;
    });
  }

  final _$productsAtom = Atom(name: '_ShopHomeViewModelBase.products');

  @override
  List<ProductModel> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<ProductModel> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$isPageLoadigAtom = Atom(name: '_ShopHomeViewModelBase.isPageLoadig');

  @override
  bool get isPageLoadig {
    _$isPageLoadigAtom.reportRead();
    return super.isPageLoadig;
  }

  @override
  set isPageLoadig(bool value) {
    _$isPageLoadigAtom.reportWrite(value, super.isPageLoadig, () {
      super.isPageLoadig = value;
    });
  }

  final _$_fetchLatestAsyncAction =
      AsyncAction('_ShopHomeViewModelBase._fetchLatest');

  @override
  Future<void> _fetchLatest() {
    return _$_fetchLatestAsyncAction.run(() => super._fetchLatest());
  }

  final _$_fetchCategoriesAsyncAction =
      AsyncAction('_ShopHomeViewModelBase._fetchCategories');

  @override
  Future<void> _fetchCategories() {
    return _$_fetchCategoriesAsyncAction.run(() => super._fetchCategories());
  }

  final _$_fetchProductsAsyncAction =
      AsyncAction('_ShopHomeViewModelBase._fetchProducts');

  @override
  Future<void> _fetchProducts() {
    return _$_fetchProductsAsyncAction.run(() => super._fetchProducts());
  }

  final _$_ShopHomeViewModelBaseActionController =
      ActionController(name: '_ShopHomeViewModelBase');

  @override
  void _changeLoading() {
    final _$actionInfo = _$_ShopHomeViewModelBaseActionController.startAction(
        name: '_ShopHomeViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_ShopHomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
categories: ${categories},
latests: ${latests},
products: ${products},
isPageLoadig: ${isPageLoadig}
    ''';
  }
}
