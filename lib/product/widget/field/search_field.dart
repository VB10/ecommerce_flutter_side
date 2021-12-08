import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../init/lang/locale_keys.g.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: context.colorScheme.primary,
        filled: true,
        isDense: true,
        prefixIcon: const Icon(Icons.search),
        labelText: LocaleKeys.serach_searchSomething.tr(),
        border: OutlineInputBorder(borderRadius: context.normalBorderRadius, borderSide: BorderSide.none),
      ),
    );
  }
}
