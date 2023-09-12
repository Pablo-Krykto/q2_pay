import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_debit/widgets/q2_pay_menu_app_bar_widget.dart';
import 'package:module_debit/widgets/q2_pay_menu_items_list_widget/q2_pay_menu_items_list_widget.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

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
        bottomNavigationBar: Container(
            color: Q2PayColors.primary,
            alignment: Alignment.center,
            height: Q2PayDimens.xlhg,
            child: SvgPicture.asset(Q2PayVector.ic_q2_pay.svg,
                package: Q2PayVector.ic_q2_pay.package, width: Q2PayDimens.xlss, fit: BoxFit.fitWidth)));
  }
}
