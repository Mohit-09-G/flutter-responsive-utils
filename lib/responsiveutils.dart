import 'package:flutter/widgets.dart';

class ResponsiveUtils {
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _averageSize;
  static late TextScaler _textScaler;

  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _screenWidth = size.width;
    _screenHeight = size.height;
    _averageSize = (_screenWidth + _screenHeight) / 2;
    _textScaler = MediaQuery.textScalerOf(context);
  }

  static double getScaledSize(double value) {
    return (value / 100) * _averageSize;
  }

  static double getScreenWidthPercent(double percent) {
    return (_screenWidth * percent) / 100;
  }

  static double getScreenHeightPercent(double percent) {
    return (_screenHeight * percent) / 100;
  }

  static double getScaledText(double percent) {
    final baseTextSize = (_averageSize * percent) / 100;
    return _textScaler.scale(baseTextSize);
  }
}
