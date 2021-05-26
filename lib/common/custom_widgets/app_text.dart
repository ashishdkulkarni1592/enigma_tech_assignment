import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_dimens.dart';
import 'package:EnigmaAssignement/utils/validation.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final bool isCenter;
  bool showPlaceholder = true;

  /// xxx Small  = 8.0
  AppText.xxxsmallDark(text, {isCenter})
      : this.text = text.toUpperCase(),
        color = AppColors.black,
        fontSize = TextSize().xxxsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.xsmallWhite(text, {isCenter})
      : this.text = text,
        color = AppColors.white_00,
        fontSize = TextSize().xsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallWhiteBold(text, {isCenter})
      : this.text = text,
        color = AppColors.white_00,
        fontSize = TextSize().xsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.xsmallDark(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().xsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.xsmallDarkBold(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().xsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w600;

  AppText.xxsmallDark(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().xxsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallDark(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallLightDark(text, {isCenter})
      : this.text = text,
        color = AppColors.black.withOpacity(0.6),
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallGrey(text, {isCenter})
      : this.text = text,
        color = AppColors.grey,
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallWarmGrey(text, {isCenter})
      : this.text = text,
        color = AppColors.warm_grey,
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallPrimaryWhite(text, {isCenter})
      : this.text = text,
        color = AppColors.white_00,
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallPrimaryDark(text, {isCenter})
      : this.text = text,
        color = AppColors.colorPrimaryDark,
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallPrimaryDarkBold(text, {isCenter})
      : this.text = text,
        color = AppColors.colorPrimaryDark,
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.xsmallPrimaryDark(text, {isCenter})
      : this.text = text,
        color = AppColors.colorPrimaryDark,
        fontSize = TextSize().xsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.xsmallPrimaryDarkBold(text, {isCenter})
      : this.text = text,
        color = AppColors.colorPrimaryDark,
        fontSize = TextSize().xsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.xsmallPrimary(text, {isCenter})
      : this.text = text,
        color = AppColors.colorPrimary,
        fontSize = TextSize().xsmall,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.smallDarkBold(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.mediumDark(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().medium,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w400;

  AppText.mediumDarkBold(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().medium,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.mediumPrimaryBold(text, {isCenter})
      : this.text = text,
        color = AppColors.colorPrimaryDark,
        fontSize = TextSize().medium,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.largeDarkBold(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().large,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.xxxlargeDarkBold(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().xxxlarge,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w600;

  AppText.largeDarkBoldWhite(this.text, {isCenter})
      : color = AppColors.white_00,
        fontSize = TextSize().large,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w600;

  AppText.mediumWhiteBold(text, {isCenter})
      : this.text = text,
        color = AppColors.white_00,
        fontSize = TextSize().medium,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.xlargeWhiteBold(text, {isCenter})
      : this.text = text,
        color = AppColors.white_00,
        fontSize = TextSize().xlarge,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.xlargeDarkBold(text, {isCenter})
      : this.text = text,
        color = AppColors.black,
        fontSize = TextSize().xlarge,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w700;

  AppText.smallDarkAccentBold(text, {isCenter})
      : this.text = text,
        color = AppColors.colorAccent,
        fontSize = TextSize().small,
        this.isCenter = isCenter ?? false,
        fontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    if (!Validation().isValid(text)) {
      // text = AppStrings().blank;
    }
    // Color foregroundColor = color.withAlpha(Constants.ALPHA_PLACEHOLDER);
    // Color textColor = color.withAlpha(0);
    return Container(
      // foregroundDecoration:
      //     _showPlaceholder() ? BoxDecoration(color: foregroundColor) : null,
      child: Align(
        alignment: isCenter ? Alignment.center : Alignment.centerLeft,
        child: Text(
          text,
          overflow: TextOverflow.clip,
          style: TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontFamily: 'Geometry Soft Pro',
              fontStyle: FontStyle.normal,
              letterSpacing: 0.01,
              height: 1.2,
              fontSize: fontSize),
          textAlign: isCenter ? TextAlign.center : TextAlign.left,
        ),
      ),
    );
  }
}
