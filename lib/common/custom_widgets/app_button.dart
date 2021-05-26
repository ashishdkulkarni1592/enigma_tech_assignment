import 'package:EnigmaAssignement/application/loader.dart';
import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import '../../resources/app_dimens.dart';

class AppButton extends StatelessWidget {
  final Function onClick;
  final String text;
  final int _type;

  static const int _ROUNDED_CORNERS = 0;

  static const int _ROUNDED_SIDES = _ROUNDED_CORNERS + 1;

  static const int _ROUNDED_SIDES_CORNER = _ROUNDED_SIDES + 1;

  AppButton.roundedSides({this.text, this.onClick})
      : this._type = _ROUNDED_SIDES;

  @override
  Widget build(BuildContext context) {
    return Loader().isLoading ? Container() : _roundedSides(context);
  }

  Widget _roundedSides(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: onClick,
        textColor: Colors.white,
        padding: const EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(AppSizes().button_border_radius)),
        child: Container(
          width: AppSizes().buttonWidth,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(AppSizes().button_border_radius)),
              gradient: new LinearGradient(colors: [
                AppColors.colorPrimaryDark,
                AppColors.button_orange,
              ])),
          padding: const EdgeInsets.all(10.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
