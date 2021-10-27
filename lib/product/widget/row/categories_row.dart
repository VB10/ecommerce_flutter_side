import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

import '../../../view/shop/home/model/category_model.dart';
import '../padding/paddig_widgets.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({Key? key, required this.items}) : super(key: key);
  final List<CategoryModel> items;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(items.length, (index) {
        return Expanded(
          child: Column(
            children: [
              Expanded(
                child: CachedNetworkImage(imageUrl: items[index].image ?? ''),
              ),
              FittedBox(
                child: Text(items[index].name ?? '',
                    style: context.textTheme.subtitle1?.copyWith(
                      color: context.colorScheme.onPrimary,
                      fontWeight: FontWeight.w500,
                    )),
              )
            ],
          ),
        );
      }),
    );
  }
}
