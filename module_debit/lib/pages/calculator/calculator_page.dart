import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';
import 'package:module_debit/i18n/translate.dart';
import 'package:module_debit/stores/calculator/calculator_store.dart';
import 'package:module_debit/view_models/calculator/calculator_view_model.dart';
import 'package:module_debit/widgets/q2_pay_amount_widget.dart';
import 'package:module_debit/widgets/q2_pay_calculator_app_bar_widget.dart';
import 'package:module_debit/widgets/q2_pay_confirm_button_widget.dart';
import 'package:module_debit/widgets/q2_pay_numeric_keyboard_widget/q2_pay_numeric_keyboard_widget.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/flutter_triple.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final CalculatorStore _store = Modular.get<CalculatorStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Q2PayCalculatorAppBarWidget(onTapMenu: _store.openMenu),
        body: Column(children: [
          const Spacer(flex: 3),
          Text(TranslateDebit.strings.storeQ2, textAlign: TextAlign.center).bodyMediumMedium(),
          TripleBuilder<CalculatorStore, CalculatorViewModel>(
              store: _store, builder: (_, triple) => Q2PayAmountWidget(controller: triple.state.controller)),
          const Spacer(flex: 2),
          Q2PayNumericKeyboardWidget(onTap: _store.onTapCalculatorButton),
          Q2PayConfirmButtonWidget(onTap: _store.onTapConfirmButton)
        ]));
  }
}
