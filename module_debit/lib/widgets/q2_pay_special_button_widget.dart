import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:module_commons/commons.dart';

class Q2PaySpecialButtonWidget extends StatefulWidget {
  final double borderRadiusCircular;
  final double? width;
  final double? height;
  final Color buttonColor;
  final Widget? child;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry? padding;
  final Function() onPressed;

  const Q2PaySpecialButtonWidget({
    Key? key,
    required this.onPressed,
    this.borderRadiusCircular = Q2PayDimens.smacro,
    this.buttonColor = Q2PayColors.monoWhite,
    this.margin = EdgeInsets.zero,
    this.child,
    this.width,
    this.height,
    this.padding,
  }) : super(key: key);

  @override
  State<Q2PaySpecialButtonWidget> createState() => _Q2PaySpecialButtonWidgetState();
}

class _Q2PaySpecialButtonWidgetState extends State<Q2PaySpecialButtonWidget> {
  bool _isPressed = false;

  static final List<BoxShadow> _notClickedBoxShadow = [
    BoxShadow(
        color: Q2PayColors.monoBlack.withOpacity(Q2PayOpacity.twoThird),
        offset: const Offset(0, Q2PayDimens.femto),
        blurRadius: Q2PayDimens.pico),
  ];
  static const List<BoxShadow> _clickedBoxShadow = [];

  List<BoxShadow> get _containerBoxShadow => _isPressed ? _clickedBoxShadow : _notClickedBoxShadow;

  BoxDecoration get _boxDecoration {
    return BoxDecoration(
        boxShadow: _containerBoxShadow,
        color: widget.buttonColor,
        border: Border.all(color: Q2PayColors.border),
        borderRadius: BorderRadius.circular(widget.borderRadiusCircular));
  }

  void _onTapButton(bool isClicked) => setState(() => _isPressed = isClicked);

  void _onTap() {
    HapticFeedback.lightImpact();
    widget.onPressed.call();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (_) => _onTapButton(true),
        onTapUp: (_) => _onTapButton(false),
        onTapCancel: () => _onTapButton(false),
        onTap: _onTap,
        child: AnimatedContainer(
            alignment: Alignment.center,
            width: widget.width,
            height: widget.height,
            margin: widget.margin,
            duration: const Duration(milliseconds: 100),
            decoration: _boxDecoration,
            child: widget.child));
  }
}
