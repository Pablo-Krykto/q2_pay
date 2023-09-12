import 'package:module_debit/module/debit_module.dart';
import 'package:module_external_dependencies/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(r) {
    r.module(Modular.initialRoute, module: DebitModule());
  }
}
