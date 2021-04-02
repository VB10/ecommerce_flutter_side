import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store?> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) builder;
  final T model;
  final Function(T model)? onModelReady;
  final VoidCallback? dispose;
  final VoidCallback? onRefresh;

  BaseView(
      {Key? key,
      required this.builder,
      required this.model,
      this.onModelReady,
      this.dispose,
      this.onRefresh})
      : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store?> extends State<BaseView<T?>> {
  T? model;

  @override
  void initState() {
    model = widget.model;
    if (widget.onModelReady != null) {
      widget.onModelReady!(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, model);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.dispose != null) {
      widget.dispose!();
    }
  }
}
