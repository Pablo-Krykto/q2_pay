import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_debit/widgets/q2_pay_cancel_button_widget.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const Spacer(flex: 3),
      Center(
          child: SvgPicture.asset(Q2PayVector.ic_pay.svg,
              package: Q2PayVector.ic_pay.package, width: Q2PayDimens.xxsl, fit: BoxFit.fitWidth)),
      Padding(
          padding: const EdgeInsets.only(top: Q2PayDimens.xxs),
          child: Text(TranslateDebit.strings.approachInsertCard).bodyLargeMedium(color: Q2PayColors.primary)),
      const Spacer(flex: 2),
      Padding(
          padding: const EdgeInsets.only(bottom: Q2PayDimens.femto),
          child: Text(TranslateDebit.strings.cashCredit).bodyBaseRegular()),
      RichText(
          text: TextSpan(children: [
        TextSpan(
            text: TranslateDebit.strings.once, style: const Text("").bodyLargeBold(color: Q2PayColors.green).style),
        TextSpan(text: " R\$ 3.500,00", style: const Text("").bodyLargeBold(color: Q2PayColors.primary).style),
      ])),
      Padding(
          padding: const EdgeInsets.only(top: Q2PayDimens.xxs, bottom: Q2PayDimens.femto),
          child: Text(TranslateDebit.strings.total).bodyBaseRegular()),
      const Text("R\$ 3.500,00").bodyLargeMedium(color: Q2PayColors.primary),
      const Spacer(flex: 2),
      Q2PayCancelButtonWidget(
          text: TranslateDebit.strings.cancel.toUpperCase(),
          onTap: () => Modular.to.pushNamed(Q2PayRoutes.approvedPayment)),
      const Spacer(flex: 3),
    ]));
  }
}
