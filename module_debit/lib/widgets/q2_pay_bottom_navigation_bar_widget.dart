import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class Q2PayBottomNavigationBarWidget extends StatelessWidget {
  const Q2PayBottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Q2PayColors.primary,
        alignment: Alignment.center,
        height: Q2PayDimens.xlhg,
        child: SvgPicture.asset(Q2PayVector.ic_q2_pay.svg,
            package: Q2PayVector.ic_q2_pay.package, width: Q2PayDimens.xlss, fit: BoxFit.fitWidth));
  }
}
