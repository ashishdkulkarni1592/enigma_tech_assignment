import 'package:EnigmaAssignement/resources/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_text.dart';

class AppbarDashboard extends StatelessWidget {
  final Function onTapMenu;
  AppbarDashboard({this.onTapMenu});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.account_circle_rounded,
          size: 40,
        ),
        AppText.xlargeWhiteBold(
          AppStrings().flutter_test,
          isCenter: true,
        ),
        InkWell(
          onTap: () {
            onTapMenu();
          },
          child: Icon(
            Icons.menu,
            size: 40,
          ),
        ),
      ],
    );
  }
}
