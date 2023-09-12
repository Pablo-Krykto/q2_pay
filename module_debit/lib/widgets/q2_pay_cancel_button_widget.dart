import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';

class Q2PayCancelButtonWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final String text;
  final EdgeInsetsGeometry margin;

  const Q2PayCancelButtonWidget({
    super.key,
    required this.onTap,
    required this.text,
    this.margin = const EdgeInsets.symmetric(horizontal: Q2PayDimens.xxxlg),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            margin: margin,
            height: Q2PayDimens.xllg,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Q2PayColors.primary, width: Q2PayDimens.atto),
                borderRadius: BorderRadius.circular(Q2PayDimens.xxxs)),
            child: Text(text).bodyMediumBold(color: Q2PayColors.primary)));
  }
}
