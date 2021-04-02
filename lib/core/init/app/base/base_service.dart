import 'package:gow_mobile/core/init/network/config/network_route_paths.dart';

import '../../network/manager/network_manager.dart';

class BaseService {
  NetworkManager networkManager = NetworkManager.instance;
  NetworkRoutePath routePath = NetworkRoutePath.instance;
}
