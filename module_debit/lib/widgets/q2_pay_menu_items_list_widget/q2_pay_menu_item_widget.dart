import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/models/q2_pay_menu_item_model.dart';
import 'package:module_debit/widgets/q2_pay_special_button_widget.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class Q2PayMenuItemWidget extends StatelessWidget {
  final Q2PayMenuItemModel item;

  const Q2PayMenuItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Q2PaySpecialButtonWidget(
        onPressed: Modular.to.pop,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset(item.vector.svg,
              package: item.vector.package, height: Q2PayDimens.xl, fit: BoxFit.fitHeight),
          Padding(
              padding: const EdgeInsets.only(top: Q2PayDimens.nano),
              child: Text(item.title).bodyLargeMedium(color: Q2PayColors.primary))
        ]));
  }
}
