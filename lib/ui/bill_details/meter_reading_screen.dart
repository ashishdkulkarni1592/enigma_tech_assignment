import 'dart:math';

import 'package:EnigmaAssignement/common/custom_widgets/app_background.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_button.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_text.dart';
import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_dimens.dart';
import 'package:EnigmaAssignement/resources/app_images.dart';
import 'package:EnigmaAssignement/resources/app_strings.dart';
import 'package:EnigmaAssignement/ui/bill_details/ui_model.dart';
import 'package:EnigmaAssignement/utils/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class MeterReadingScreen extends StatefulWidget {
  @override
  _MeterReadingScreenState createState() => _MeterReadingScreenState();
}

class _MeterReadingScreenState extends State<MeterReadingScreen> {
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
                    AppText.xlargeDarkBold(
                      AppStrings().meter_reading,
                      isCenter: true,
                    ),
                    Spacing().xlargeVertical,
                    _meterReadingList(),
                    Spacing().xlargeVertical,
                    AppText.largeDarkBold(
                      AppStrings().make_card_payment,
                      isCenter: true,
                    ),
                    Spacing().xlargeVertical,
                    _getBalance(),
                    Spacing().xlargeVertical,
                    AppText.largeDarkBold(
                      AppStrings().setup_payment_method,
                      isCenter: true,
                    ),
                    Spacing().xlargeVertical,
                    AppButton.roundedSides(
                      onClick: () {},
                      text: AppStrings().setup_direct_debit,
                    ),
                    AppText.largeDarkBold(
                      AppStrings().or,
                      isCenter: true,
                    ),
                    Spacing().smallVertical,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          AppImages().ic_american_express,
                          height: 35,
                          width: 35,
                        ),
                        Image.asset(
                          AppImages().ic_master_card,
                          height: 35,
                          width: 35,
                        ),
                        Image.asset(
                          AppImages().ic_visa,
                          height: 35,
                          width: 35,
                        ),
                        Image.asset(
                          AppImages().ic_paypal,
                          height: 35,
                          width: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _meterReadingList() {
    return Container(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.smallDarkBold('Bill Date'),
              AppText.smallDarkBold('Bill Date'),
              AppText.smallDarkBold('Due Date'),
            ],
          ),
          Spacing().xxsmallVertical,
          _divider(),
          Spacing().xxsmallVertical,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.smallLightDark('2021.09.01'),
              AppText.smallLightDark('2000.00 £'),
              AppText.smallLightDark('2021.09.01'),
            ],
          ),
          Spacing().xxsmallVertical,
          _divider(),
          Spacing().xxsmallVertical,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.smallLightDark('2021.09.01'),
              AppText.smallLightDark('2000.00 £'),
              AppText.smallLightDark('2021.09.01'),
            ],
          ),
          Spacing().xxsmallVertical,
          _divider(),
          Spacing().xxsmallVertical,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.smallLightDark('2021.09.01'),
              AppText.smallLightDark('2000.00 £'),
              AppText.smallLightDark('2021.09.01'),
            ],
          ),
          Spacing().xxsmallVertical,
          _divider(),
          Spacing().xxsmallVertical,
        ],
      ),
    );
  }

  Container _divider() {
    return Container(
      width: double.infinity,
      height: 0.5,
      color: AppColors.background_gradient,
    );
  }

  Widget _getBalance() {
    return Container(
      width: 250,
      child: Stack(
        children: [
          Container(
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
            child: Column(
              children: [
                AppText.smallWarmGrey(
                  AppStrings().total_balance,
                  isCenter: true,
                ),
                Spacing().xxsmallVertical,
                AppText.smallDarkBold(
                  AppStrings().total_balance_amount,
                  isCenter: true,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Transform.rotate(
              angle: 0.20,
              child: Image.asset(
                AppImages().ic_euro_sack,
                height: 80,
                width: 80,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
