import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/widgets/q2_pay_numeric_keyboard_widget/q2_pay_numeric_button_widget.dart';

class Q2PayNumericKeyboardWidget extends StatelessWidget {
  final ValueChanged<String> onTap;

  const Q2PayNumericKeyboardWidget({super.key, required this.onTap});

  List<String> get _calculatorButtons => ["1", "2", "3", "4", "5", "6", "7", "8", "9", "00", "0", "⌫"];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: Q2PayDimens.xss),
        mainAxisSpacing: Q2PayDimens.xxxnano,
        crossAxisSpacing: Q2PayDimens.xxxnano,
        childAspectRatio: Q2PayDimens.xhatto,
        children: _calculatorButtons.map((e) => Q2PayNumericButtonWidget(text: e, onTap: onTap)).toList());
  }
}
