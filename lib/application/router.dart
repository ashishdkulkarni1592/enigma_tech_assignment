import 'package:EnigmaAssignement/ui/bill_details/bill_details_screen.dart';
import 'package:EnigmaAssignement/ui/bill_details/meter_reading_screen.dart';
import 'package:EnigmaAssignement/ui/bill_details/usage_details_screen.dart';
import 'package:EnigmaAssignement/ui/landing_page/landing_screen.dart';
import 'package:EnigmaAssignement/ui/login/login_screen.dart';
import 'package:EnigmaAssignement/ui/refer_and_earn/refer_and_earn_screen.dart';
import 'package:EnigmaAssignement/ui/welcome_page/welcome_screen.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const LOGIN_PAGE = "/loginPage";
  static const WELCOME_PAGE = "/welcomePage";
  static const LANDING_PAGE = "/landingPage";
  static const REFER_AND_EARN = "/referAndEarn";
  static const USAGE_DETAILS = "/usageDetailScreen";
  static const METER_READING = "/meterReadingScreen";
  static const BILL_DETAILS = "/BillDetails";
}

class AppRouter {
  Route router(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return goToLoginPage();

      case RouteName.WELCOME_PAGE:
        return goToWelcomePage();

      case RouteName.LANDING_PAGE:
        return goToLandingPage();

      case RouteName.REFER_AND_EARN:
        return goToReferAndEarnPage();

      case RouteName.USAGE_DETAILS:
        return goToUsageDetailsScreen();

      case RouteName.METER_READING:
        return goToMeterReadingScreen();

      case RouteName.BILL_DETAILS:
        return goToBillDetailsPage();
    }
  }

  MaterialPageRoute goToLoginPage() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return LoginPageScreen();
    });
  }

  MaterialPageRoute goToWelcomePage() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return WelcomePageScreen();
    });
  }

  MaterialPageRoute goToLandingPage() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return LandingPageScreen();
    });
  }

  MaterialPageRoute goToReferAndEarnPage() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return ReferAndEarnScreen();
    });
  }

  MaterialPageRoute goToBillDetailsPage() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return BillDetailsScreen();
    });
  }

  MaterialPageRoute goToMeterReadingScreen() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return MeterReadingScreen();
    });
  }

  MaterialPageRoute goToUsageDetailsScreen() {
    return MaterialPageRoute(builder: (BuildContext context) {
      return UsageDetailsScreen();
    });
  }
}
