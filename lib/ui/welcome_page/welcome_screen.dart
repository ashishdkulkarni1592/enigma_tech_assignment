import 'dart:async';
import 'dart:math';

import 'package:EnigmaAssignement/application/router.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_background.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_button.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_text.dart';
import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_dimens.dart';
import 'package:EnigmaAssignement/resources/app_images.dart';
import 'package:EnigmaAssignement/resources/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class WelcomePageScreen extends StatefulWidget {
  @override
  _WelcomePageScreenState createState() => _WelcomePageScreenState();
}

class _WelcomePageScreenState extends State<WelcomePageScreen> {
  int seconds;
  Timer _timer;

  @override
  void initState() {
    var now = DateTime.now();
    // Get a 4-seconds interval
    var twoHours = now.add(Duration(seconds: 4)).difference(now);
    seconds = twoHours.inSeconds;
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Stack(
          children: [
            AppBackground(),
            Align(
              alignment: Alignment.center,
              child: _getUserInfo(),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Transform.rotate(
                angle: -0.10,
                child: Padding(
                  padding: MarginPadding().smallLeft,
                  child: Image.asset(
                    AppImages().ic_thumbs_up,
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getUserInfo() {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 300,
          padding: MarginPadding().smallAll,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.background_gradient, width: 2),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: AppColors.warm_grey.withOpacity(0.4),
                blurRadius: 50.0,
              ),
            ],
            color: AppColors.background_gradient.withOpacity(0.6),
            borderRadius: BorderRadius.all(
                Radius.circular(AppSizes().cardCornerBorderRadius)),
          ),
          child: Column(
            children: [
              AppText.largeDarkBold(
                AppStrings().hello,
                isCenter: true,
              ),
              AppText.xxxlargeDarkBold(
                AppStrings().sam,
                isCenter: true,
              ),
              Spacing().smallVertical,
              AppText.largeDarkBold(
                AppStrings().welcome_flutter_app,
                isCenter: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void startTimer() {
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      if (mounted) {
        setState(() {
          seconds--;
        });
      }
      if (seconds == 0) {
        setState(() {
          seconds = 0;
          cancelTimer();
        });
        Navigator.of(context).pushNamed(RouteName.LANDING_PAGE);
      }
    });
  }

  void cancelTimer() {
    if (_timer != null) {
      _timer.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    cancelTimer();
    super.dispose();
  }
}
