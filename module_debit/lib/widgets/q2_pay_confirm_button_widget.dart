import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';

class Q2PayConfirmButtonWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const Q2PayConfirmButtonWidget({
    super.key,
    required this.onTap,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: Q2PayDimens.macro),
    this.margin = const EdgeInsets.fromLTRB(Q2PayDimens.xss, Q2PayDimens.xmacro, Q2PayDimens.xss, Q2PayDimens.xxxs),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: padding,
            margin: margin,
            decoration:
                BoxDecoration(color: Q2PayColors.green, borderRadius: BorderRadius.circular(Q2PayDimens.smacro)),
            child: child));
  }
}
