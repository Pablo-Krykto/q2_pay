import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_debit/widgets/q2_pay_bottom_navigation_bar_widget.dart';
import 'package:module_debit/widgets/q2_pay_cancel_button_widget.dart';
import 'package:module_debit/widgets/q2_pay_confirm_button_widget.dart';
import 'package:module_debit/widgets/q2_pay_payment_app_bar_widget.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class RefusedPaymentPage extends StatelessWidget {
  const RefusedPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Q2PayPaymentAppBarWidget(),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: Q2PayDimens.sm),
              child: Text(TranslateDebit.strings.refusedPayment).bodyLargeMedium(color: Q2PayColors.primary)),
          const Spacer(flex: 2),
          SvgPicture.asset(Q2PayVector.ic_misuse.svg,
              package: Q2PayVector.ic_misuse.package, width: Q2PayDimens.xxsls, fit: BoxFit.fitWidth),
          const Spacer(flex: 6),
          Q2PayConfirmButtonWidget(
              margin: const EdgeInsets.only(right: Q2PayDimens.xxxlg, left: Q2PayDimens.xxxlg, bottom: Q2PayDimens.xxs),
              onTap: () => Modular.to.pushNamed(Q2PayRoutes.payment),
              child: Text(TranslateDebit.strings.tryAgain).bodyLargeSemiBold(color: Q2PayColors.monoWhite)),
          Q2PayCancelButtonWidget(
              text: TranslateDebit.strings.cancel, onTap: () => Modular.to.pushNamed(Q2PayRoutes.calculator)),
          const Spacer(flex: 3),
        ]),
        bottomNavigationBar: const Q2PayBottomNavigationBarWidget());
  }
}
