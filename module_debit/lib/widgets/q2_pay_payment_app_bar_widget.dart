import 'package:flutter/material.dart';
import 'package:module_commons/commons.dart';

class Q2PayPaymentAppBarWidget extends PreferredSize {
  Q2PayPaymentAppBarWidget({super.key})
      : super(
            preferredSize: const Size.fromHeight(Q2PayDimens.xlhg),
            child: Container(color: Q2PayColors.primary, height: Q2PayDimens.xlhg));
}
