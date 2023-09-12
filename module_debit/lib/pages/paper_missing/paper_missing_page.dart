import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_debit/widgets/q2_pay_bottom_navigation_bar_widget.dart';
import 'package:module_debit/widgets/q2_pay_cancel_button_widget.dart';
import 'package:module_debit/widgets/q2_pay_confirm_button_widget.dart';
import 'package:module_debit/widgets/q2_pay_payment_app_bar_widget.dart';
import 'package:module_debit/widgets/q2_pay_warning_widget.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class PaperMissingPage extends StatelessWidget {
  const PaperMissingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Q2PayPaymentAppBarWidget(),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.only(top: Q2PayDimens.sm),
              child: Text(TranslateDebit.strings.paperMissing).bodyBaseLargeMedium(color: Q2PayColors.primary)),
          const Spacer(),
          SvgPicture.asset(Q2PayVector.ic_pos.svg,
              package: Q2PayVector.ic_pos.package, width: Q2PayDimens.xlss, fit: BoxFit.fitWidth),
          Padding(
              padding: const EdgeInsets.only(top: Q2PayDimens.xxs),
              child: Text(TranslateDebit.strings.reloadPaper).bodyBaseRegular()),
          const Spacer(flex: 2),
          const Q2PayWarningWidget(),
          const Spacer(),
          Q2PayConfirmButtonWidget(
              margin: const EdgeInsets.only(right: Q2PayDimens.xxxlg, left: Q2PayDimens.xxxlg, bottom: Q2PayDimens.xxs),
              onTap: () => Modular.to.pushNamed(Q2PayRoutes.calculator),
              child: Text(TranslateDebit.strings.tryAgain).bodyLargeSemiBold(color: Q2PayColors.monoWhite)),
          Q2PayCancelButtonWidget(text: TranslateDebit.strings.cancel, onTap: () => Modular.to.pop()),
          const Spacer(flex: 3),
        ]),
        bottomNavigationBar: const Q2PayBottomNavigationBarWidget());
  }
}
