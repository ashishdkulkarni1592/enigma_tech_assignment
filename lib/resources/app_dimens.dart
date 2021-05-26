import 'package:flutter/cupertino.dart';

class TextSize {
  static TextSize _instance = TextSize._internal();

  TextSize._internal();

  factory TextSize() => _instance;

  get xsmallInt => 12;

  get xxxsmall => 8.0;

  get xxsmall => 10.0;

  get xsmall => 12.0;

  get xsmallThirteen => 13.0;

  get small => 14.0;

  get xsmallFifteen => 15.0;

  get medium => 16.0;

  get large => 18.0;

  get xlarge => 22.0;

  get mlarge => 26.0;

  get xxlarge => 32.0;

  get xxxlarge => 36.0;
}

class MarginPadding {
  static MarginPadding _instance = MarginPadding._internal();

  MarginPadding._internal();

  factory MarginPadding() => _instance;
  final xxxxsmall = 1.0;
  final xxxsmall = 2.0;
  final xxsmall = 4.0;
  final xsmall = 8.0;
  final small = 12.0;
  final medium = 14.0;
  final xmedium = 16.0;
  final large = 20.0;
  final xlarge = 24.0;
  final xxlarge = 32.0;
  final xxxlarge = 40.0;
  final xxxxxlarge = 44.0;

  get xxxSmallAll => EdgeInsets.all(xxxsmall);
  get xxSmallLeft => EdgeInsets.only(left: xxsmall);

  get xxSmallAll => EdgeInsets.all(xxsmall);

  ///xxsmall

  get xxxsmallBottom => EdgeInsets.only(bottom: xxxsmall);

  get xxsmallBottom => EdgeInsets.only(bottom: xxsmall);

  get xxxsmallTop => EdgeInsets.only(top: xxxsmall);

  get xxsmallAll => EdgeInsets.all(xxsmall);

  get xxsmallTop => EdgeInsets.only(top: xxsmall);

  get xxsmallLeft => EdgeInsets.only(left: xxsmall);

  get xxsmallRight => EdgeInsets.only(right: xxsmall);

  get xxsmallLeftRight => EdgeInsets.only(right: xxsmall, left: xxsmall);

  /// xsmall
  get xsmallAll => EdgeInsets.all(xsmall);

  get xsmallTop => EdgeInsets.only(top: xsmall);

  get xsmallBottom => EdgeInsets.only(bottom: xsmall);

  get xsmallLeft => EdgeInsets.only(left: xsmall);

  get xsmallRight => EdgeInsets.only(right: xsmall);

  get xsmallLeftRight => EdgeInsets.only(right: xsmall, left: xsmall);

  get xsmallTopBottom => EdgeInsets.only(top: xsmall, bottom: xsmall);

  get xxsmallTopBottom => EdgeInsets.only(top: xxsmall, bottom: xxsmall);

  /// Small
  get smallAll => EdgeInsets.all(small);

  get smallTop => EdgeInsets.only(top: small);

  get topTen => EdgeInsets.only(top: 10);

  get smallBottom => EdgeInsets.only(bottom: small);

  get smallLeft => EdgeInsets.only(left: small);

  get smallLefttopbottom =>
      EdgeInsets.only(left: small, top: small, bottom: small);

  get smallRight => EdgeInsets.only(right: small);

  get smallLeftRight => EdgeInsets.only(right: small, left: small);

  get smallLeftRightTop =>
      EdgeInsets.only(right: small, left: small, top: small);

  get smallLeftTop => EdgeInsets.only(left: small, top: small);

  get xsmallLeftRightBottom =>
      EdgeInsets.only(right: xsmall, left: xsmall, bottom: xsmall);

  get smallTopBottom => EdgeInsets.only(top: small, bottom: small);

  get xlargeTopBottom => EdgeInsets.only(top: xlarge, bottom: xlarge);

  /// Normal
  get mediumAll => EdgeInsets.all(medium);

  get xmediumAll => EdgeInsets.all(xmedium);

  get mediumTop => EdgeInsets.only(top: medium);

  get xmediumTop => EdgeInsets.only(top: xmedium);

  get mediumBottom => EdgeInsets.only(bottom: medium);

  get mediumLeft => EdgeInsets.only(left: medium);

  get mediumRight => EdgeInsets.only(right: medium);

  get mediumLeftRight => EdgeInsets.only(left: medium, right: medium);

  get mediumLeftRightTop =>
      EdgeInsets.only(left: medium, right: medium, top: medium);

  get xmediumLeftRight => EdgeInsets.only(left: xmedium, right: xmedium);

  get largeLeftTop => EdgeInsets.only(left: large, top: large);

  get mediumTopBottom => EdgeInsets.only(top: medium, bottom: medium);

  /// Large
  get largeAll => EdgeInsets.all(large);

  get largeTop => EdgeInsets.only(top: large);

  get largeLeft => EdgeInsets.only(left: large);

  get largeRight => EdgeInsets.only(right: large);

  get largeLeftRight => EdgeInsets.only(right: large, left: large);

  /// xlarge
  get xlargeAll => EdgeInsets.all(xlarge);

  get xlargeTop => EdgeInsets.only(top: xlarge);

  get xlargeLeft => EdgeInsets.only(left: xlarge);

  get xlargeRight => EdgeInsets.only(right: xlarge);

  get xlargeLeftRight => EdgeInsets.only(right: xlarge, left: xlarge);

  /// xxlarge
  get xxlargeAll => EdgeInsets.all(xxlarge);

  get xxlargeTop => EdgeInsets.only(top: xxlarge);

  get xxlargeLeft => EdgeInsets.only(left: xxlarge);

  get xxlargeRight => EdgeInsets.only(right: xxlarge);

  get xxlargeLeftRight => EdgeInsets.only(right: xxlarge, left: xxlarge);

  /// xxxlarge
  get xxxlargeAll => EdgeInsets.all(xxxlarge);

  get xxxlargeTop => EdgeInsets.only(top: xxxlarge);

  get xxxlargeLeft => EdgeInsets.only(left: xxxlarge);

  get xxxlargeRight => EdgeInsets.only(right: xxxlarge);

  get xxxlargeLeftRight => EdgeInsets.only(right: xxxlarge, left: xxxlarge);

  // different margin padding for ltbr
  get containerMargin => EdgeInsets.fromLTRB(medium, xsmall, medium, xsmall);

  get horizontalMargin => EdgeInsets.symmetric(horizontal: xsmall);

  get contactHorizontalMargin => EdgeInsets.symmetric(horizontal: xxxxsmall);

  get formFiledVerticalMargin => EdgeInsets.only(
        left: 16.00,
        right: 8.00,
        top: 8.00,
        bottom: 8.00,
      );

  get containerAmountMargin => EdgeInsets.only(left: xxxsmall, top: medium);

  get dateTextPadding => EdgeInsets.only(
      left: xsmall, top: xxxsmall, right: xsmall, bottom: xxxsmall);

  get containerPurchaseAmountMargin =>
      EdgeInsets.only(left: xxxsmall, top: medium);
}

class Spacing {
  static Spacing _instance = Spacing._internal();

  Spacing._internal();

  factory Spacing() => _instance;
  final _xxxsmall = 2.0;
  final _xxsmall = 4.0;
  final _xsmall = 8.0;
  final _small = 12.0;
  final _xmedium = 14.0;
  final _medium = 16.0;
  final _lmedium = 18.0;
  final _large = 20.0;
  final _xlarge = 24.0;
  final _xlargeTwentyEight = 28.0;
  final _xxlarge = 32.0;
  final _largeFortyEight = 48.0;
  final _largSixtyTwo = 68.0;
  final _xxxlarge = 72.0;
  final _xxxxlarge = 144.0;

  get xxsmallVertical => SizedBox(height: _xxsmall);

  get xxxsmallVertical => SizedBox(height: _xxxsmall);

  get xxxsmallHorizontal => SizedBox(width: _xxxsmall);

  get xxsmallHorizontal => SizedBox(width: _xxsmall);

  get xsmallVertical => SizedBox(height: _xsmall);

  get xsmallHorizontal => SizedBox(width: _xsmall);

  get smallVertical => SizedBox(height: _small);

  get xmediumVertical => SizedBox(height: _xmedium);

  get smallHorizontal => SizedBox(width: _small);

  get mediumVertical => SizedBox(height: _medium);

  get mediumHorizontal => SizedBox(width: _medium);

  get xmediumHorizontal => SizedBox(width: _xmedium);

  get lmediumHorizontal => SizedBox(width: _lmedium);

  get largeVertical => SizedBox(height: _large);

  get largeSixtyTwo => SizedBox(height: _largSixtyTwo);

  get largeFortyEight => SizedBox(height: _largeFortyEight);

  get largeMediumVertical => SizedBox(height: _medium);

  get largeHorizontal => SizedBox(width: _large);

  get xlargeVertical => SizedBox(height: _xlarge);

  get xlargeHorizontal => SizedBox(width: _xlarge);

  get xxlargeVertical => SizedBox(height: _xxlarge);

  get xlargeTwentyEight => SizedBox(height: _xlargeTwentyEight);

  get xxlargeHorizontal => SizedBox(width: _xxlarge);

  get xxxlargeVertical => SizedBox(height: _xxxlarge);

  get xxxlargeHorizontal => SizedBox(width: _xxxlarge);

  get xxxxlargeVertical => SizedBox(height: _xxxxlarge);

  get xxxxlargeHorizontal => SizedBox(width: _xxxxlarge);
}

class AppSizes {
  static AppSizes _instance = AppSizes._internal();

  AppSizes._internal();

  factory AppSizes() => _instance;

  get defaultLogoWidth => 91.0;

  get largeLogoWidth => 150.0;

  get defaultLogoHeight => 28.0;

  get largeLogoHeight => 50.0;

  get sipReportLogoHeight => 50.0;

  get sipReportLogoWidth => 50.0;

  get defaultButtonWidth => 300.0;

  get circularImageRadius => 1000.0;

  get xxxsmall => 8.0;

  get small => 24.0;

  get xsmall => 16.0;

  get medium => 32.0;

  get large => 48.0;

  get xlarge => 90.0;

  get xxlarge => 100.0;

  get xxxlarge => 140.0;

  get toggleButtonBorderRadius => 30.0;

  get button_border_radius => 30.0;

  get text_filed_border_radius => 30.0;

  get buttonWidth => 150.0;

  get textFieldHeight => 57.0;

  get ALPHA_PLACEHOLDER => 50.0;

  get cardElevation => 3.0;

  get cardCornerBorderRadius => 10.0;

  get popularBrandsSize => 125.0;

  get blogImageHeight => 130.0;

  get budgetShop => 100.0;

  get popularBrandsHeight => 50.0;

  get popularBrandsWidth => 130.0;

  get toggelButtonProductSize => 45.0;

  get toggleButtonNumberOfChilderns => 40.0;

  get bottomPopupHeight => 350.0;

  get appButtonSkipHeight => 30.0;
}

class IconSize {
  static IconSize _instance = IconSize._internal();

  IconSize._internal();

  factory IconSize() => _instance;

  get xxxsmall => 6.0;

  get xxsmall => 10.0;

  get xsmall => 15.0;

  get small => 20.0;

  get medium => 22.0;

  get large => 28.0;

  get xlarge => 32.0;

  get xxlarge => 40.0;

  get xxxlarge => 60.0;

  get xxxxlarge => 100.0;

  get xxxxxlarge => 250.0;
}
