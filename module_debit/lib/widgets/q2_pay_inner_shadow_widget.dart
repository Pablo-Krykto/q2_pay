import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Q2PayInnerShadowWidget extends SingleChildRenderObjectWidget {
  final List<Shadow> shadows;

  const Q2PayInnerShadowWidget({
    Key? key,
    this.shadows = const <Shadow>[],
    Widget? child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(context) => _RenderInnerShadow(shadows: shadows);
}

class _RenderInnerShadow extends RenderProxyBox {
  List<Shadow> shadows;

  _RenderInnerShadow({required this.shadows});

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null) return;
    Rect bounds = offset & size;

    context.canvas.saveLayer(bounds, Paint());
    context.paintChild(child!, offset);

    for (Shadow shadow in shadows) {
      Rect shadowRect = bounds.inflate(shadow.blurSigma);
      Paint shadowPaint = Paint()
        ..blendMode = BlendMode.srcATop
        ..colorFilter = ColorFilter.mode(shadow.color, BlendMode.srcOut)
        ..imageFilter = ImageFilter.blur(sigmaX: shadow.blurSigma, sigmaY: shadow.blurSigma);
      context.canvas
        ..saveLayer(shadowRect, shadowPaint)
        ..translate(shadow.offset.dx, shadow.offset.dy);
      context.paintChild(child!, offset);
      context.canvas.restore();
    }

    context.canvas.restore();
  }
}
