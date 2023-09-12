import 'package:module_commons/commons.dart';
import 'package:module_debit/view_models/calculator/calculator_view_model.dart';
import 'package:module_external_dependencies/flutter_modular.dart';
import 'package:module_external_dependencies/flutter_triple.dart';

class CalculatorStore extends Store<CalculatorViewModel> {
  CalculatorStore() : super(CalculatorViewModel());

  void onTapCalculatorButton(String key) {
    key == "⌫" ? _removeLastCurrentValue() : _addValue(key);
    update(state.copyWith(currentValues: state.currentValues));
  }

  void _removeLastCurrentValue() {
    if (state.currentValues.isNotEmpty) state.currentValues.removeLast();
    _updateValueController();
  }

  void _addValue(String key) {
    _addCurrentValue(key);
    _updateValueController();
  }

  void _addCurrentValue(String key) => state.currentValues.add(key);

  void _updateValueController() => state.controller.updateValue(_currentValuesToDouble);

  double get _currentValuesToDouble {
    try {
      String val = state.currentValues.join();
      return double.parse(val) / 100;
    } catch (error) {
      return 0;
    }
  }

  void openMenu() => Modular.to.pushNamed(Q2PayRoutes.menu);

  void onTapConfirmButton() => Modular.to.pushNamed(Q2PayRoutes.payment);
}
