import 'package:EnigmaAssignement/application/router.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_background.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_button.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_text.dart';
import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_dimens.dart';
import 'package:EnigmaAssignement/resources/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPageScreen extends StatefulWidget {
  @override
  _LoginPageScreenState createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AppBackground(),
            Column(
              children: [
                Spacing().largeVertical,
                AppText.xlargeWhiteBold(
                  AppStrings().flutter_test,
                  isCenter: true,
                ),
                Expanded(
                    child: Container(
                        padding: MarginPadding().xlargeLeftRight,
                        child: _getUserLogin())),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _getUserLogin() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          AppText.xlargeDarkBold(
            AppStrings().member_login,
            isCenter: true,
          ),
          Spacing().smallVertical,
          FormBuilderTextField(
            autocorrect: true,
            attribute: 'emailAddress',
            keyboardType: TextInputType.text,
            maxLengthEnforced: true,
            cursorColor: AppColors.colorPrimaryDark,
            maxLines: 1,
            textAlign: TextAlign.center,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (_) =>
                FocusScope.of(context).requestFocus(new FocusNode()),
            validators: [],
            decoration: InputDecoration(
              hintText: AppStrings().hint_enter_email_address,
              hintStyle: TextStyle(
                  color: AppColors.warm_grey,
                  fontWeight: FontWeight.w600,
                  fontSize: TextSize().small,
                  fontFamily: 'Geometry Soft Pro'),
              alignLabelWithHint: true,
              filled: true,
              fillColor: AppColors.grey_light,
              contentPadding: MarginPadding().formFiledVerticalMargin,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppSizes().text_filed_border_radius)),
                borderSide: BorderSide(color: AppColors.grey_light, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppSizes().text_filed_border_radius)),
                borderSide: BorderSide(color: AppColors.grey_light, width: 1),
              ),
            ),
          ),
          Spacing().smallVertical,
          AppButton.roundedSides(
            text: AppStrings().get_otp,
            onClick: () {
              Navigator.of(context).pushNamed(RouteName.WELCOME_PAGE);
            },
          ),
          Spacing().smallVertical,
          AppText.smallGrey(
            AppStrings().otp_message,
            isCenter: true,
          ),
        ],
      ),
    );
  }
}
