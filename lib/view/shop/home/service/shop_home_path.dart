part of './home_shop_service.dart';

enum _ShopHomePath { categories, latest, product }

extension _ShopHomePathExtension on _ShopHomePath {
  String rawValue() {
    switch (this) {
      case _ShopHomePath.categories:
        return '/categories';

      case _ShopHomePath.latest:
        return '/latest';

      case _ShopHomePath.product:
        return '/product';
    }
  }
}
