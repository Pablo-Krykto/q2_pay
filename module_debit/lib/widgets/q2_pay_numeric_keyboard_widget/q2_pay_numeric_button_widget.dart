import 'package:flutter/material.dart';
import 'package:module_assets/assets.dart';
import 'package:module_commons/commons.dart';
import 'package:module_external_dependencies/flutter_svg.dart';

class Q2PayNumericButtonWidget extends StatelessWidget {
  final String text;
  final ValueChanged<String> onTap;

  const Q2PayNumericButtonWidget({super.key, required this.text, required this.onTap});

  bool get _isBackspace => text == "⌫";

  Color get _backgroundColor => _isBackspace ? Q2PayColors.red : Q2PayColors.monoWhite;

  Border? get _border => _isBackspace ? null : Border.all(color: Q2PayColors.border);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onTap(text),
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: _backgroundColor, borderRadius: BorderRadius.circular(Q2PayDimens.smacro), border: _border),
            child: Visibility(
                visible: _isBackspace,
                replacement: Text(text).bodyExtraLargeSemiBold(color: Q2PayColors.primary),
                child: SvgPicture.asset(Q2PayVector.ic_backspace.svg,
                    package: Q2PayVector.ic_backspace.package, width: Q2PayDimens.xsss, fit: BoxFit.fitWidth))));
  }
}
