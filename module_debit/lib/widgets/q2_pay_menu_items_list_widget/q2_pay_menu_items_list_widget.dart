import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_debit/models/q2_pay_menu_item_model.dart';
import 'package:module_debit/widgets/q2_pay_menu_items_list_widget/q2_pay_menu_item_widget.dart';

class Q2PayMenuItemsListWidget extends StatelessWidget {
  const Q2PayMenuItemsListWidget({super.key});

  List<Q2PayMenuItemModel> get _items => [
        Q2PayMenuItemModel(title: TranslateDebit.strings.credit, vector: Q2PayVector.ic_credit),
        Q2PayMenuItemModel(title: TranslateDebit.strings.debit, vector: Q2PayVector.ic_debit),
        Q2PayMenuItemModel(title: TranslateDebit.strings.flexRate, vector: Q2PayVector.ic_flex_rate),
        Q2PayMenuItemModel(title: TranslateDebit.strings.pix, vector: Q2PayVector.ic_pix),
        Q2PayMenuItemModel(title: TranslateDebit.strings.split, vector: Q2PayVector.ic_split),
      ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: Q2PayDimens.xxsss),
        mainAxisSpacing: Q2PayDimens.macro,
        crossAxisSpacing: Q2PayDimens.macro,
        childAspectRatio: Q2PayDimens.xxatto,
        children: _items.map((e) => Q2PayMenuItemWidget(item: e)).toList());
  }
}
