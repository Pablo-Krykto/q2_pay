import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/extended_masked_text.dart';

class Q2PayAmountWidget extends StatelessWidget {
  final MoneyMaskedTextController controller;

  const Q2PayAmountWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: Q2PayDimens.xss),
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: const EdgeInsets.only(left: Q2PayDimens.sm),
                  child:
                      const Text("R\$", textAlign: TextAlign.center).bodyExtraLargeMedium(color: Q2PayColors.primary))),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: const EdgeInsets.only(left: Q2PayDimens.xls, right: Q2PayDimens.xss),
                  child: Text(controller.text, textAlign: TextAlign.center)
                      .bodyExtraLargeFourSemiBold(color: Q2PayColors.primary)))
        ]));
  }
}
