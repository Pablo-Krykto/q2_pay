import 'package:module_external_dependencies/extended_masked_text.dart';

class CalculatorViewModel {
  var controller = MoneyMaskedTextController(initialValue: 0.00, leftSymbol: "", decimalSeparator: ",");
  List<String> currentValues = [];

  CalculatorViewModel copyWith({List<String>? currentValues}) {
    return CalculatorViewModel()
      ..controller = controller
      ..currentValues = currentValues ?? this.currentValues;
  }
}
