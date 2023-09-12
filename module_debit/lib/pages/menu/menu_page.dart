import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_debit/widgets/q2_pay_bottom_navigation_bar_widget.dart';
import 'package:module_debit/widgets/q2_pay_menu_app_bar_widget.dart';
import 'package:module_debit/widgets/q2_pay_menu_items_list_widget/q2_pay_menu_items_list_widget.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Q2PayMenuAppBarWidget(),
        body: Column(children: [
          const Spacer(flex: 3),
          Text(TranslateDebit.strings.chooseFormPayment).bodyLargeMedium(),
          const Spacer(flex: 4),
          const Q2PayMenuItemsListWidget(),
          const Spacer(flex: 6),
        ]),
        bottomNavigationBar: const Q2PayBottomNavigationBarWidget());
  }
}
