import 'package:vexana/vexana.dart';

import '../model/category_model.dart';

part './shop_home_path.dart';

abstract class IHomeShopService {
  late final INetworkManager _manager;

  IHomeShopService(INetworkManager manager) {
    _manager = manager;
  }

  Future<List<CategoryModel>> fetchCategores();
  Future<List<LatestModel>> fetchLatest();
  void fetchProducts();
}

class HomeShopService extends IHomeShopService {
  HomeShopService(INetworkManager manager) : super(manager);

  @override
  Future<List<CategoryModel>> fetchCategores() async {
    final response = await _manager.send<CategoryModel, List<CategoryModel>>(_ShopHomePath.categories.rawValue(),
        parseModel: CategoryModel(), method: RequestType.GET);

    return response.data ?? [];
  }

  @override
  Future<List<LatestModel>> fetchLatest() async {
    final response = await _manager.send<LatestModel, List<LatestModel>>(_ShopHomePath.latest.rawValue(),
        parseModel: LatestModel(), method: RequestType.GET);

    return response.data ?? [];
  }

  @override
  void fetchProducts() {
    // TODO: implement fetchProducts
  }
}
