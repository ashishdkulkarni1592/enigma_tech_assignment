import 'dart:async';
import 'dart:io';
import 'package:EnigmaAssignement/resources/app_colors.dart';
import 'package:EnigmaAssignement/resources/app_strings.dart';
import 'package:EnigmaAssignement/utils/globals.dart';
import 'package:EnigmaAssignement/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'router.dart';

class Application extends StatefulWidget {
  AppState _appState;
  final bool isLoggedIn;

  Application(router, {this.isLoggedIn}) {
    _appState = AppState(router);
  }

  @override
  State<StatefulWidget> createState() {
    return _appState;
  }
}

class AppState extends State<Application> {
  AppRouter router;
  AppState(this.router);

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.colorAccent,
    ));

    //NetworkCheck();

    return LayoutBuilder(builder: (context, constraints) {
      SizeConfig().init(constraints);
      return MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return MediaQuery(
            child: child,
            data: MediaQuery.of(context).copyWith(
                textScaleFactor: Platform.isIOS
                    ? 1.0
                    : MediaQuery.of(context).textScaleFactor,
                boldText: false),
          );
        },
        theme: ThemeData(
          fontFamily: 'Geometry Soft Pro',
          brightness: Brightness.light,
          primaryColor: AppColors.colorPrimary,
          primaryColorDark: AppColors.colorPrimaryDark,
          accentColor: AppColors.colorAccent,
        ),
        title: AppStrings().app_title,
        onGenerateRoute: (settings) => router.router(settings),
      );
    });
  }
}
