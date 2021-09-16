import 'package:vexana/vexana.dart';

abstract class IHomeShopService {
  late final INetworkManager _manager;

  IHomeShopService(INetworkManager manager) {
    _manager = manager;
  }

  void fetchCategores();
  void fetchLatest();
  void fetchProducts();
}
