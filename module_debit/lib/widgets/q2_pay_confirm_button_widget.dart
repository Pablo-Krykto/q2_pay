import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';

class Q2PayConfirmButtonWidget extends StatelessWidget {
  final GestureTapCallback onTap;

  const Q2PayConfirmButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: Q2PayDimens.macro),
            margin: const EdgeInsets.only(
                top: Q2PayDimens.xmacro, right: Q2PayDimens.xss, left: Q2PayDimens.xss, bottom: Q2PayDimens.xxxs),
            decoration:
                BoxDecoration(color: Q2PayColors.green, borderRadius: BorderRadius.circular(Q2PayDimens.smacro)),
            child: Text(TranslateDebit.strings.confirm, textAlign: TextAlign.center)
                .bodyExtraLargeSemiBold(color: Q2PayColors.monoWhite)));
  }
}
