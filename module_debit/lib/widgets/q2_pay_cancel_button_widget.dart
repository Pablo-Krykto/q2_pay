import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';

class Q2PayCancelButtonWidget extends StatelessWidget {
  final GestureTapCallback onTap;

  const Q2PayCancelButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: Q2PayDimens.xxxlg),
            padding: const EdgeInsets.symmetric(vertical: Q2PayDimens.xmicro),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Q2PayColors.primary, width: Q2PayDimens.atto),
                borderRadius: BorderRadius.circular(Q2PayDimens.xxxs)),
            child: Text(TranslateDebit.strings.cancel).bodyMediumBold(color: Q2PayColors.primary)));
  }
}
