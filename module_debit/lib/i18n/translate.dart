import 'package:module_debit/i18n/strings/pt_br.dart';

abstract class TranslateDebit {
  static DebitStrings strings = _getType();

  static T _getType<T extends DebitStrings>() => DebitPtBR() as T;
}

abstract class DebitStrings {
  String get storeQ2;

  String get confirm;
}
