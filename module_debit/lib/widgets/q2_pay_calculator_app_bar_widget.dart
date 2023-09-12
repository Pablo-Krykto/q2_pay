import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class Q2PayCalculatorAppBarWidget extends PreferredSize {
  Q2PayCalculatorAppBarWidget({super.key, required GestureTapCallback onTapMenu})
      : super(
            preferredSize: const Size.fromHeight(Q2PayDimens.xxxllg),
            child: Container(
                color: Q2PayColors.primary,
                height: Q2PayDimens.xxxllg,
                padding: const EdgeInsets.symmetric(horizontal: Q2PayDimens.xxxs),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  SvgPicture.asset(Q2PayVector.ic_q2_pay.svg,
                      package: Q2PayVector.ic_q2_pay.package, width: Q2PayDimens.xlss, fit: BoxFit.fitWidth),
                  GestureDetector(
                      onTap: onTapMenu,
                      child: SvgPicture.asset(Q2PayVector.ic_menu.svg,
                          package: Q2PayVector.ic_menu.package, width: Q2PayDimens.xs, fit: BoxFit.fitWidth))
                ])));
}
