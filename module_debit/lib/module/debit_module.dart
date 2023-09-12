import 'package:module_commons/commons.dart';
import 'package:module_debit/pages/approved_payment/approved_payment_page.dart';
import 'package:module_debit/pages/calculator/calculator_page.dart';
import 'package:module_debit/pages/menu/menu_page.dart';
import 'package:module_debit/pages/payment/payment_page.dart';
import 'package:module_debit/pages/refused_payment/refused_payment_page.dart';
import 'package:module_debit/stores/calculator/calculator_store.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

class DebitModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<CalculatorStore>(CalculatorStore.new);
  }

  @override
  void routes(r) {
    r.child(Q2PayRoutes.calculator, transition: TransitionType.rightToLeft, child: (context) => const CalculatorPage());
    r.child(Q2PayRoutes.menu, transition: TransitionType.rightToLeft, child: (context) => const MenuPage());
    r.child(Q2PayRoutes.payment, transition: TransitionType.rightToLeft, child: (context) => const PaymentPage());
    r.child(Q2PayRoutes.approvedPayment,
        transition: TransitionType.rightToLeft, child: (context) => const ApprovedPaymentPage());
    r.child(Q2PayRoutes.refusedPayment,
        transition: TransitionType.rightToLeft, child: (context) => const RefusedPaymentPage());
  }
}
