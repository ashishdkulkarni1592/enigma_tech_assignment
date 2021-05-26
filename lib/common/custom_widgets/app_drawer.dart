import 'package:EnigmaAssignement/application/router.dart';
import 'package:EnigmaAssignement/common/custom_widgets/app_text.dart';
import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_dimens.dart';
import 'package:EnigmaAssignement/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: double.infinity,
      padding: MarginPadding().largeAll,
      child: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Spacing().largeVertical,
                  _drawerItem(
                      context, 'Refer and Earn', RouteName.REFER_AND_EARN),
                  _dividerItem(),
                  _drawerItem(
                      context, 'Usage Details', RouteName.USAGE_DETAILS),
                  _dividerItem(),
                  _drawerItem(
                      context, 'Reading Details', RouteName.METER_READING),
                  _dividerItem(),
                  _drawerItem(context, 'Bill Details', RouteName.BILL_DETAILS),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _drawerItem(BuildContext context, String title, String routeName) {
    return Container(
      padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context).pushNamed(routeName);
        },
        child: AppText.mediumDark(title),
      ),
    );
  }

  _dividerItem() {
    return Divider(
      thickness: 0.5,
      height: 4 * SizeConfig.heightMultiplier,
      color: AppColors.background_gradient,
    );
  }
}
