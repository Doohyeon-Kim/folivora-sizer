import 'package:flutter/widgets.dart';

import 'unit.dart';

class Sizer {
  Sizer._();

  static UnitWidth unitWidth = UnitWidth();
  static UnitHeight unitHeight = UnitHeight();
  static UnitPadding unitPadding = UnitPadding();

  static Responsive responsive = Responsive();

  static init({double? standardLogicalWidth, double? standardLogicalHeight}) {
    unitPadding.topSafeArea =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).padding.top;
    unitPadding.bottomSafeArea =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .padding
            .bottom;
    unitPadding.safeAreaPadding =
        unitPadding.topSafeArea + unitPadding.bottomSafeArea;

    unitWidth.window =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

    unitHeight.window =
        MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height;

    unitWidth.standard = standardLogicalWidth ?? unitWidth.window;
    unitHeight.standard = standardLogicalHeight ?? unitHeight.window;

    unitWidth.max = unitWidth.window;
    unitHeight.max = unitHeight.window;

    unitWidth.lp4 = unitWidth.max / (unitWidth.standard / 4);
    unitHeight.lp4 = unitHeight.max / (unitHeight.standard / 4);

    unitWidth.lp8 = unitWidth.lp4 * 2;
    unitWidth.lp12 = unitWidth.lp4 * 3;
    unitWidth.lp16 = unitWidth.lp4 * 4;
    unitWidth.lp20 = unitWidth.lp4 * 5;
    unitWidth.lp24 = unitWidth.lp4 * 6;
    unitWidth.lp28 = unitWidth.lp4 * 7;
    unitWidth.lp32 = unitWidth.lp4 * 8;
    unitWidth.lp36 = unitWidth.lp4 * 9;
    unitWidth.lp40 = unitWidth.lp4 * 10;
    unitWidth.lp44 = unitWidth.lp4 * 11;
    unitWidth.lp48 = unitWidth.lp4 * 12;
    unitWidth.lp52 = unitWidth.lp4 * 13;
    unitWidth.lp56 = unitWidth.lp4 * 14;
    unitWidth.lp60 = unitWidth.lp4 * 15;
    unitWidth.lp64 = unitWidth.lp4 * 16;
    unitWidth.lp68 = unitWidth.lp4 * 17;
    unitWidth.lp72 = unitWidth.lp4 * 18;
    unitWidth.lp76 = unitWidth.lp4 * 19;
    unitWidth.lp80 = unitWidth.lp4 * 20;
    unitWidth.lp84 = unitWidth.lp4 * 21;
    unitWidth.lp88 = unitWidth.lp4 * 22;
    unitWidth.lp92 = unitWidth.lp4 * 23;
    unitWidth.lp96 = unitWidth.lp4 * 24;
    unitWidth.lp100 = unitWidth.lp4 * 25;
    unitWidth.lp104 = unitWidth.lp4 * 26;
    unitWidth.lp108 = unitWidth.lp4 * 27;
    unitWidth.lp112 = unitWidth.lp4 * 28;

    unitHeight.lp8 = unitHeight.lp4 * 2;
    unitHeight.lp12 = unitHeight.lp4 * 3;
    unitHeight.lp16 = unitHeight.lp4 * 4;
    unitHeight.lp20 = unitHeight.lp4 * 5;
    unitHeight.lp24 = unitHeight.lp4 * 6;
    unitHeight.lp28 = unitHeight.lp4 * 7;
    unitHeight.lp32 = unitHeight.lp4 * 8;
    unitHeight.lp36 = unitHeight.lp4 * 9;
    unitHeight.lp40 = unitHeight.lp4 * 10;
    unitHeight.lp44 = unitHeight.lp4 * 11;
    unitHeight.lp48 = unitHeight.lp4 * 12;
    unitHeight.lp52 = unitHeight.lp4 * 13;
    unitHeight.lp56 = unitHeight.lp4 * 14;
    unitHeight.lp60 = unitHeight.lp4 * 15;
    unitHeight.lp64 = unitHeight.lp4 * 16;
    unitHeight.lp68 = unitHeight.lp4 * 17;
    unitHeight.lp72 = unitHeight.lp4 * 18;
    unitHeight.lp76 = unitHeight.lp4 * 19;
    unitHeight.lp80 = unitHeight.lp4 * 20;
    unitHeight.lp84 = unitHeight.lp4 * 21;
    unitHeight.lp88 = unitHeight.lp4 * 22;
    unitHeight.lp92 = unitHeight.lp4 * 23;
    unitHeight.lp96 = unitHeight.lp4 * 24;
    unitHeight.lp100 = unitHeight.lp4 * 25;
    unitHeight.lp104 = unitHeight.lp4 * 26;
    unitHeight.lp108 = unitHeight.lp4 * 27;
    unitHeight.lp112 = unitHeight.lp4 * 28;
  }
}

class Responsive {}
