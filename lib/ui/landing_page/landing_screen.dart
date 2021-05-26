import 'dart:math';

import 'package:EnigmaAssignement/common/custom_widgets/app_background.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_bar_common.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_button.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_drawer.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_text.dart';
import 'package:EnigmaAssignement/common/custom_widgets/line_chart_sample.dart';
import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_dimens.dart';
import 'package:EnigmaAssignement/resources/app_images.dart';
import 'package:EnigmaAssignement/resources/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LandingPageScreen extends StatefulWidget {
  @override
  _LandingPageScreenState createState() => _LandingPageScreenState();
}

class _LandingPageScreenState extends State<LandingPageScreen> {
  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _key,
      endDrawer: Drawer(
        child: AppDrawer(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            AppBackground(),
            SingleChildScrollView(
              child: Container(
                padding: MarginPadding().smallLeftRight,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Spacing().largeVertical,
                    AppbarDashboard(
                      onTapMenu: () {
                        _key.currentState.openEndDrawer();
                      },
                    ),
                    Spacing().xlargeVertical,
                    _getWelcomeMessage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getWelcomeMessage() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText.xxxlargeDarkBold(
              AppStrings().hi_sam,
              isCenter: true,
            ),
            Transform.rotate(
              angle: -0.20,
              child: Padding(
                padding: MarginPadding().smallLeft,
                child: Image.asset(
                  AppImages().ic_kissing_girl,
                  height: 80,
                  width: 80,
                ),
              ),
            ),
          ],
        ),
        AppText.largeDarkBold(
          AppStrings().greeting_message,
          isCenter: true,
        ),
        Spacing().xlargeVertical,
        _getBalance(),
        Spacing().xlargeVertical,
        LineChartSample(),
      ],
    );
  }

  Widget _getBalance() {
    return Container(
      width: 300,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              AppText.smallWarmGrey(AppStrings().balance),
              Spacing().xxsmallVertical,
              AppText.smallDarkBold(AppStrings().balance_amount),
            ],
          ),
          Row(
            children: [
              AppText.smallDark(AppStrings().balance_statement),
              Transform.rotate(
                angle: 0.20,
                child: Image.asset(
                  AppImages().ic_euro_sack,
                  height: 50,
                  width: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
