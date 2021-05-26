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

class BillDetailsScreen extends StatefulWidget {
  @override
  _BillDetailsScreenState createState() => _BillDetailsScreenState();
}

class _BillDetailsScreenState extends State<BillDetailsScreen> {
  List<BillDetailsUiModel> billDetailsList = Constants().billDetails;

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
                      AppStrings().bill_period_month,
                      isCenter: true,
                    ),
                    Spacing().xlargeVertical,
                    _buildBillDetailsList(billDetailsList),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBillDetailsList(List<BillDetailsUiModel> billDetailsList) {
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
          Spacing().xxsmallVertical,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.smallDarkBold(AppStrings().bill_amount),
              AppText.smallDarkBold(AppStrings().due_date),
            ],
          ),
          Spacing().xxsmallVertical,
          _divider(),
          _listBuilder(billDetailsList),
        ],
      ),
    );
  }

  Widget _listBuilder(List<BillDetailsUiModel> billDetailsList) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: billDetailsList.length,
        itemBuilder: (context, index) {
          return _getBillDetails(billDetailsList[index]);
        },
      ),
    );
  }

  Widget _getBillDetails(BillDetailsUiModel billDetailsUiModel) {
    return Container(
      padding: MarginPadding().xxsmallAll,
      child: Column(
        children: [
          Spacing().xxsmallVertical,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.smallLightDark(billDetailsUiModel.header),
              AppText.smallDarkBold(billDetailsUiModel.details),
            ],
          ),
          Spacing().xxsmallVertical,
          _divider(),
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
}
