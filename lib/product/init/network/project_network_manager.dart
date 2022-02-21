import 'package:vexana/vexana.dart';

import '../../model/error/project_error_model.dart';
import 'network_config.dart';

class ProjectNetworkManager {
  static ProjectNetworkManager? _instace;
  static ProjectNetworkManager get instance {
    if (_instace != null) _instace!;

    _instace = ProjectNetworkManager._init();
    return _instace!;
  }

  late INetworkManager networkManager;
  late NetworkConfig _config;
  ProjectNetworkManager._init() {
    _config = NetworkConfig();
    networkManager = NetworkManager(
      options: _config.options,
      isEnableLogger: false,
      errorModel: ProjectErrorModel(),
    );
  }
}
