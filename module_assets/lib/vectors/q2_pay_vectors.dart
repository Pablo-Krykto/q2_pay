enum Q2PayVector {
  ic_q2_pay,
  ic_menu,
  ic_backspace,
  ic_arrow_left,
  ic_credit,
  ic_debit,
  ic_flex_rate,
  ic_pix,
  ic_split,
  ic_pay
}

extension Q2PayVectorExtension on Q2PayVector {
  String get svg => "vectors/$name.svg";

  String get package => "module_assets";
}
