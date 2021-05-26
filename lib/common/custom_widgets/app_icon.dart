import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_dimens.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final icon;
  final Function onClick;
  final Color iconColor;
  final double iconHeight;
  final double iconWidth;

  AppIcon({
    this.icon,
    this.onClick,
    this.iconColor = AppColors.warm_grey,
    this.iconHeight = 28.0,
    this.iconWidth = 22.0,
  });

  AppIcon.small({
    this.icon,
    this.onClick,
    this.iconColor = AppColors.warm_grey,
    iconHeight,
    iconWidth,
  })  : this.iconHeight = IconSize().xsmall,
        this.iconWidth = IconSize().xsmall;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.colorAccent,
      onTap: onClick,
      child: Container(
        width: iconWidth,
        height: iconHeight,
        child: iconColor == AppColors.warm_grey
            ? Image.asset(icon)
            : Image.asset(
                icon,
                color: iconColor,
              ),
      ),
    );
  }
}
