import 'package:vexana/vexana.dart';

import 'network_config.dart';

class ProjectNetworkManager {
  static ProjectNetworkManager? _instace;
  static ProjectNetworkManager get instance {
    if (_instace != null) _instace!;

    _instace = ProjectNetworkManager._init();
    return _instace!;
  }

  late INetworkManager networkManager;
  late NetworkConfig config;
  ProjectNetworkManager._init() {
    config = NetworkConfig();
    networkManager = NetworkManager(options: config.options);
  }
}
