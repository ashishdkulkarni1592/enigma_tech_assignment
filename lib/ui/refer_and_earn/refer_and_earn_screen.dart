import 'dart:math';

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

class ReferAndEarnScreen extends StatefulWidget {
  @override
  _ReferAndEarnScreenState createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    _getWelcomeMessage(),
                    Spacing().xlargeVertical,
                    _getRefer(),
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

  Widget _getWelcomeMessage() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages().ic_gift_box,
              height: 35,
              width: 35,
            ),
            Spacing().smallHorizontal,
            AppText.xlargeDarkBold(
              AppStrings().refer_earn,
              isCenter: true,
            ),
          ],
        ),
        Spacing().smallVertical,
        AppText.smallDarkBold(
          AppStrings().refer_earn_guideline,
          isCenter: true,
        ),
      ],
    );
  }

  Widget _getRefer() {
    return Column(
      children: [
        Container(
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
            child: AppText.largeDarkBold(
              AppStrings().refer_now,
              isCenter: true,
            )),
        Spacing().smallVertical,
        AppText.smallDarkBold(
          AppStrings().personal_link,
          isCenter: true,
        ),
        Spacing().smallVertical,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: 220,
                height: 55,
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
                    Icon(
                      Icons.link,
                      color: AppColors.link_color,
                    ),
                    Spacing().xxsmallHorizontal,
                    AppText.xxsmallDark(AppStrings().reffer_link),
                  ],
                )),
            Image.asset(
              AppImages().ic_send,
              height: 25,
              width: 25,
            ),
            Image.asset(
              AppImages().ic_twitter,
              height: 25,
              width: 25,
            ),
            Image.asset(
              AppImages().ic_facebook,
              height: 25,
              width: 25,
            ),
          ],
        ),
        Spacing().smallVertical,
        Container(
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
            child: AppText.smallDarkBold(
              AppStrings().refer_power,
              isCenter: true,
            )),
        Spacing().smallVertical,
        AppText.largeDarkBold(
          AppStrings().how_it_works,
          isCenter: true,
        ),
        Spacing().smallVertical,
        AppText.smallDarkBold(
          AppStrings().invite_friends,
          isCenter: true,
        ),
        Spacing().smallVertical,
        Container(
            width: 300,
            padding: MarginPadding().mediumAll,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.white_00, width: 6),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: AppColors.dark_blue.withOpacity(0.4),
                  blurRadius: 50.0,
                ),
              ],
              color: AppColors.dark_blue.withOpacity(0.6),
              borderRadius: BorderRadius.all(Radius.circular(30.00)),
            ),
            child: Column(
              children: [
                AppText.smallWhiteBold(
                  AppStrings().my_total_rewards,
                  isCenter: true,
                ),
                Spacing().xxsmallVertical,
                AppText.smallDarkBold(
                  AppStrings().total_rewards,
                  isCenter: true,
                ),
                Spacing().xxsmallVertical,
                AppText.smallWhiteBold(
                  AppStrings().my_rewards_this_month,
                  isCenter: true,
                ),
                Spacing().xxsmallVertical,
                AppText.smallDarkBold(
                  AppStrings().total_rewards,
                  isCenter: true,
                ),
              ],
            )),
      ],
    );
  }
}
