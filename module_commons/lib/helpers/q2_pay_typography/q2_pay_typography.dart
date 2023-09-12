import 'package:flutter/material.dart';
import 'package:module_commons/helpers/q2_pay_colors.dart';
import 'package:module_commons/helpers/q2_pay_typography/q2_pay_font_family.dart';
import 'package:module_commons/helpers/q2_pay_typography/q2_pay_typography_font_size.dart';
import 'package:module_commons/helpers/q2_pay_typography/q2_pay_typography_font_weight.dart';
import 'package:module_commons/helpers/q2_pay_typography/q2_pay_typography_line_height.dart';

extension TypographyExtension on Text {
  Text bodySmallMedium({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallSemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraSmall,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinySemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.tiny,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyTinyRegular({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.tiny,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallMedium({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraSmall,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraSmallRegular({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraSmall,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeMedium({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLarge,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseLargeMedium({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.baseLarge,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseLargeSemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.baseLarge,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeSemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLarge,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeSemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeTwoMedium({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLargeTwo,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseSemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseRegular({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseMedium({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyExtraLargeFourSemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.extraLargeFour,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallRegular({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeMedium({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyLargeRegular({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.large,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyBaseBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.base,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallSemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodySmallBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.small,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumSemiBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.semiBold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumBold({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.bold,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumMedium({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.medium,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text bodyMediumRegular({Color? color}) {
    TextStyle defaultStyle = _getTextStyle(
        fontSize: TypographyFontSize.medium,
        fontWeight: TypographyFontWeight.regular,
        height: TypographyLineHeight.body,
        color: color);

    return _getTextTypography(text: this, textStyle: defaultStyle);
  }

  Text _getTextTypography({required Text text, required TextStyle textStyle}) {
    return Text(text.data!,
        style: textStyle,
        key: text.key,
        strutStyle: text.strutStyle,
        textAlign: text.textAlign,
        textDirection: text.textDirection,
        locale: text.locale,
        softWrap: text.softWrap,
        overflow: text.overflow,
        textScaleFactor: text.textScaleFactor,
        maxLines: text.maxLines,
        semanticsLabel: text.semanticsLabel,
        textWidthBasis: text.textWidthBasis,
        textHeightBehavior: text.textHeightBehavior);
  }

  TextStyle _getTextStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required double height,
    double? letterSpacing,
    required Color? color,
  }) {
    return TextStyle(
            fontSize: fontSize,
            fontStyle: FontStyle.normal,
            height: height,
            color: Q2PayColors.textPrimary,
            fontFamily: Q2PayFontFamily.robotoMono.name,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight)
        .merge(TextStyle(color: color));
  }
}
