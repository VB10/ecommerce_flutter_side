import 'package:flutter/cupertino.dart';
import '../navigation/navigation_manager.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'items/product_context.dart';

@immutable
class ProjectGlobalStates {
  late final List<SingleChildWidget> provider;

  ProjectGlobalStates() {
    provider = [..._independentServices];
  }

  final List<SingleChildWidget> _independentServices = [
    Provider(create: (context) => ProductContext(context)),
    Provider(create: (_) => NavigationService()),
  ];
}
