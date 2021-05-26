import 'dart:math';

import 'package:EnigmaAssignement/common/custom_widgets/app_background.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_button.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_text.dart';
import 'package:EnigmaAssignement/common/custom_widgets/bar_chart_sample.dart';
import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_dimens.dart';
import 'package:EnigmaAssignement/resources/app_images.dart';
import 'package:EnigmaAssignement/resources/app_strings.dart';
import 'package:EnigmaAssignement/ui/bill_details/ui_model.dart';
import 'package:EnigmaAssignement/utils/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class UsageDetailsScreen extends StatefulWidget {
  @override
  _UsageDetailsScreenState createState() => _UsageDetailsScreenState();
}

class _UsageDetailsScreenState extends State<UsageDetailsScreen> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Stack(
          children: [
            AppBackground(),
            SingleChildScrollView(
              child: Container(
                padding: MarginPadding().mediumLeftRight,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Spacing().largeVertical,
                    BarChartSample(),
                    _getBalance(),
                    Spacing().xlargeVertical,
                    _getElectricity(),
                    Spacing().smallVertical,
                    _getGas(),
                    Spacing().xlargeVertical,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getBalance() {
    return Container(
      width: 250,
      child: Container(
        margin: EdgeInsets.only(top: 25),
        padding: MarginPadding().mediumAll,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.white_00, width: 2),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.white_00.withOpacity(0.4),
              blurRadius: 50.0,
            ),
          ],
          color: AppColors.white_00.withOpacity(0.6),
          borderRadius: BorderRadius.all(Radius.circular(30.00)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_left_sharp),
            AppText.smallWarmGrey(
              'Usage Details- January',
              isCenter: true,
            ),
            Spacing().xxsmallVertical,
            Icon(Icons.arrow_right_sharp),
          ],
        ),
      ),
    );
  }

  Widget _getElectricity() {
    return Stack(
      children: [
        Container(
          padding: MarginPadding().mediumAll,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.dark_blue, width: 1),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: AppColors.white_00.withOpacity(0.4),
                blurRadius: 50.0,
              ),
            ],
            color: AppColors.dark_blue.withOpacity(0.6),
            borderRadius: BorderRadius.all(Radius.circular(12.00)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppText.largeDarkBoldWhite('Electricity'),
              AppText.xlargeWhiteBold('1300 KWH\n£1100'),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Transform.rotate(
            angle: -0.10,
            child: Container(
              height: 80,
              width: 200,
              padding: MarginPadding().largeRight,
              decoration: BoxDecoration(
                border:
                    Border.all(color: AppColors.background_gradient, width: 1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppColors.background_gradient.withOpacity(0.6),
                    blurRadius: 50.0,
                  ),
                ],
                color: AppColors.background_gradient.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(12.00)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getGas() {
    return Stack(
      children: [
        Container(
          padding: MarginPadding().mediumAll,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.colorAccent, width: 1),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: AppColors.white_00.withOpacity(0.4),
                blurRadius: 50.0,
              ),
            ],
            color: AppColors.colorAccent.withOpacity(0.6),
            borderRadius: BorderRadius.all(Radius.circular(12.00)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppText.largeDarkBoldWhite('Gas'),
              AppText.xlargeWhiteBold('1300 KWH\n£1100'),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Transform.rotate(
            angle: -0.10,
            child: Container(
              height: 80,
              width: 200,
              padding: MarginPadding().largeRight,
              decoration: BoxDecoration(
                border:
                    Border.all(color: AppColors.background_gradient, width: 1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppColors.background_gradient.withOpacity(0.6),
                    blurRadius: 50.0,
                  ),
                ],
                color: AppColors.background_gradient.withOpacity(0.6),
                borderRadius: BorderRadius.all(Radius.circular(12.00)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
