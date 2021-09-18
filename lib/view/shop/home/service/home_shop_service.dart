import 'package:vexana/vexana.dart';

import '../../../../product/model/product/product_model.dart';
import '../model/category_model.dart';

part './shop_home_path.dart';

abstract class IHomeShopService {
  late final INetworkManager _manager;

  IHomeShopService(INetworkManager manager) {
    _manager = manager;
  }

  Future<List<CategoryModel>> fetchCategores();
  Future<List<LatestModel>> fetchLatest();
  Future<List<ProductModel>> fetchProducts();
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
  Future<List<ProductModel>> fetchProducts() async {
    final response = await _manager.send<ProductModel, List<ProductModel>>(_ShopHomePath.product.rawValue(),
        parseModel: ProductModel(), method: RequestType.GET);
    print(response.data);
    return response.data ?? [];
  }
}
