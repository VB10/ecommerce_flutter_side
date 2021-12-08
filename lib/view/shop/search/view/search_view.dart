import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

import '../../../../product/init/lang/locale_keys.g.dart';
import '../../../../product/utility/padding/padding_symetrict.dart';
import '../../../../product/widget/field/search_field.dart';
import '../../../../product/widget/padding/paddig_widgets.dart';
import '../../../../product/widget/text/title_text.dart';

part './module/product_short_card.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PaddingNormal(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleText(LocaleKeys.homeTab_search.tr(), context: context),
            Padding(padding: PagePaddingSymetrict.verticalNormal(), child: const SearchField()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(LocaleKeys.serach_recentlyView.tr(), style: context.textTheme.subtitle1),
                Text(
                  LocaleKeys.button_clear.tr(),
                  style: context.textTheme.subtitle1?.copyWith(color: context.colorScheme.error),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const _ProductShortCard();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
