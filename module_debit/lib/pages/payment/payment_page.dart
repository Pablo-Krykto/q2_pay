import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SvgPicture.asset(Q2PayVector.ic_pay.svg,
          package: Q2PayVector.ic_pay.package, width: Q2PayDimens.xxsl, fit: BoxFit.fitWidth),
      Text(TranslateDebit.strings.approachInsertCard).bodyLargeMedium(),
    ]);
  }
}
