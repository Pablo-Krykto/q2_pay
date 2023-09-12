import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class Q2PayMenuAppBarWidget extends PreferredSize {
  Q2PayMenuAppBarWidget({super.key})
      : super(
            preferredSize: const Size.fromHeight(Q2PayDimens.xlhg),
            child: Container(
                color: Q2PayColors.primary,
                height: Q2PayDimens.xlhg,
                padding: const EdgeInsets.symmetric(horizontal: Q2PayDimens.xxxs),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  GestureDetector(
                      onTap: Modular.to.pop,
                      child: SvgPicture.asset(Q2PayVector.ic_arrow_left.svg,
                          package: Q2PayVector.ic_arrow_left.package, width: Q2PayDimens.xss, fit: BoxFit.fitWidth)),
                  Text(TranslateDebit.strings.formPayment).bodyLargeRegular(color: Q2PayColors.monoWhite),
                ])));
}
