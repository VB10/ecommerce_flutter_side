import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  final Widget Function(BuildContext context, T value) builder;
  final T model;
  final void Function(T model) onModelReady;
  final void Function(T model)? dispose;
  final VoidCallback? onRefresh;

  const BaseView(
      {Key? key, required this.builder, required this.model, required this.onModelReady, this.dispose, this.onRefresh})
      : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T model;
  @override
  void initState() {
    model = widget.model;

    widget.onModelReady(model);
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
      widget.dispose!(model);
    }
  }
}
