import 'package:module_debit/i18n/strings/pt_br.dart';

abstract class TranslateDebit {
  static DebitStrings strings = _getType();

  static T _getType<T extends DebitStrings>() => DebitPtBR() as T;
}

abstract class DebitStrings {
  String get storeQ2;

  String get confirm;

  String get formPayment;

  String get chooseFormPayment;

  String get credit;

  String get debit;

  String get flexRate;

  String get pix;

  String get split;

  String get approachInsertCard;

  String get cashCredit;

  String get once;

  String get total;

  String get cancel;

  String get approvedPayment;

  String get refusedPayment;

  String get printOut;

  String get start;

  String get tryAgain;

  String get paperMissing;

  String get warningPaperMissing;

  String get reloadPaper;

  String get consolidatedSales;
}
