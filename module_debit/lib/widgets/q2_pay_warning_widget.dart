import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class Q2PayWarningWidget extends StatelessWidget {
  const Q2PayWarningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: Q2PayDimens.xxxlg),
        child: Row(children: [
          Padding(
              padding: const EdgeInsets.only(right: Q2PayDimens.femto),
              child: SvgPicture.asset(Q2PayVector.ic_warning.svg,
                  package: Q2PayVector.ic_warning.package, width: Q2PayDimens.xmacro, fit: BoxFit.fitWidth)),
          Expanded(
              child: RichText(
                  text: TextSpan(children: [
            TextSpan(text: TranslateDebit.strings.warningPaperMissing, style: const Text("").bodySmallRegular().style),
            TextSpan(text: TranslateDebit.strings.consolidatedSales, style: const Text("").bodySmallSemiBold().style),
          ])))
        ]));
  }
}
