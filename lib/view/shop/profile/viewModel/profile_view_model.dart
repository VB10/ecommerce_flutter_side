import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/init/app/base/base_view_model.dart';

part 'profile_view_model.g.dart';

class ProfileViewModel = _ProfileViewModelBase with _$ProfileViewModel;

abstract class _ProfileViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}
}
