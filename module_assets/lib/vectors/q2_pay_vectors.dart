enum Q2PayVector { ic_q2_pay, ic_menu, ic_backspace }

extension Q2PayVectorExtension on Q2PayVector {
  String get svg => "vectors/$name.svg";

  String get package => "module_assets";
}
