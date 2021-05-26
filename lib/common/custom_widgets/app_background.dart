import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                decoration: new BoxDecoration(
                    gradient: RadialGradient(
              colors: [
                AppColors.colorPrimaryDark.withOpacity(0.9),
                AppColors.background_gradient.withOpacity(0.4)
              ],
              center: Alignment(0.0, -0.4),
              focal: Alignment(0.0, -0.1),
            ))),
          ),
          Expanded(
            flex: 1,
            child: Container(
                decoration: new BoxDecoration(
                    gradient: RadialGradient(
              colors: [
                AppColors.colorPrimaryDark.withOpacity(0.9),
                AppColors.background_gradient.withOpacity(0.4)
              ],
              center: Alignment(-0.6, 0.2),
              focal: Alignment(-0.6, 0.2),
            ))),
          )
        ],
      ),
    );
  }
}
