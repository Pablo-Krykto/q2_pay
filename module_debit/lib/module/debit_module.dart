import 'package:module_commons/commons.dart';
import 'package:module_debit/pages/calculator/calculator_page.dart';
import 'package:module_debit/stores/calculator/calculator_store.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

class DebitModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<CalculatorStore>(CalculatorStore.new);
  }

  @override
  void routes(r) {
    r.child(Q2PayRoutes.calculator, child: (context) => const CalculatorPage());
  }
}