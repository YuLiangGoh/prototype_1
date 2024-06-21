import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A global key for accessing the navigator state.
final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

/// Returns the global [BuildContext].
///
/// The global [BuildContext] is obtained from the [navigatorKey] and is used
/// to access the current context of the app.
BuildContext get globalContext => navigatorKey.currentContext!;

/// A constant [EdgeInsets] with a horizontal padding of 16.
const EdgeInsets paddingHorizontal16 = EdgeInsets.symmetric(horizontal: 16);

/// A constant widget representing a gap with a width of 4.
final Widget gapWidth4 = SizedBox(width: 4.w);

/// A constant widget representing a gap with a width of 8.
final Widget gapWidth8 = SizedBox(width: 8.w);

/// A constant widget representing a gap with a width of 12.
final Widget gapWidth12 = SizedBox(width: 12.w);

/// A constant widget representing a gap with a width of 16.
final Widget gapWidth16 = SizedBox(width: 16.w);

/// A constant widget representing a gap with a width of 20.
final Widget gapWidth20 = SizedBox(width: 20.w);

/// A constant widget representing a gap with a width of 24.
final Widget gapWidth24 = SizedBox(width: 24.w);

/// A constant widget representing a gap with a width of 32.
final Widget gapWidth32 = SizedBox(width: 32.w);

/// A constant widget representing a gap with a width of 40.
final Widget gapWidth40 = SizedBox(width: 40.w);

/// A constant widget representing a gap with a width of 80.
final Widget gapWidth80 = SizedBox(width: 80.w);

/// A constant widget representing a gap with a height of 4.
final Widget gapHeight4 = SizedBox(height: 4.h);

/// A constant widget representing a gap with a height of 8.
final Widget gapHeight8 = SizedBox(height: 8.h);

/// A constant widget representing a gap with a height of 12.
final Widget gapHeight12 = SizedBox(height: 12.h);

/// A constant widget representing a gap with a height of 16.
final Widget gapHeight16 = SizedBox(height: 16.h);

/// A constant widget representing a gap with a height of 20.
final Widget gapHeight20 = SizedBox(height: 20.h);

/// A constant widget representing a gap with a height of 24.
final Widget gapHeight24 = SizedBox(height: 24.h);

/// A constant widget representing a gap with a height of 32.
final Widget gapHeight32 = SizedBox(height: 32.h);

/// A constant widget representing a gap with a height of 40.
final Widget gapHeight40 = SizedBox(height: 40.h);

/// A constant widget representing a gap with a height of 80.
final Widget gapHeight80 = SizedBox(height: 80.h);

TextStyle textStyleW900({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w900,
      fontFamily: 'GilroyBlack',
    );

TextStyle textStyleW900Italic({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroyBlackItalic',
    );

TextStyle textStyleW800({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w800,
      fontFamily: 'GilroyExtraBold',
    );

TextStyle textStyleW800Italic({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroyExtraBoldItalic',
    );

TextStyle textStyleW700({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w700,
      fontFamily: 'GilroyBold',
    );

TextStyle textStyleW700Italic({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroyBoldItalic',
    );

TextStyle textStyleW600({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'GilroySemiBold',
    );

TextStyle textStyleW600Italic({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroySemiBoldItalic',
    );

TextStyle textStyleW500({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w500,
      fontFamily: 'GilroyMedium',
    );

TextStyle textStyleW500Italic({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroyMediumItalic',
    );

TextStyle textStyleW400({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'GilroyRegular',
    );

TextStyle textStyleW400Italic({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroyRegularItalic',
    );

TextStyle textStyleW300({double? fontSize}) => TextStyle(
    fontSize: fontSize?.sp,
    fontWeight: FontWeight.w300,
    fontFamily: 'GilroyLight');

TextStyle textStyleW300Italic(double fontSize) => TextStyle(
      fontSize: fontSize.sp,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroyLightItalic',
    );

TextStyle textStyleW200({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w200,
      fontFamily: 'GilroyUltraLight',
    );

TextStyle textStyleW200Italic({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w200,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroyUltraLightItalic',
    );

TextStyle textStyleW100({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w100,
      fontFamily: 'GilroyUltraLight',
    );

TextStyle textStyleW100Italic({double? fontSize}) => TextStyle(
      fontSize: fontSize?.sp,
      fontWeight: FontWeight.w100,
      fontStyle: FontStyle.italic,
      fontFamily: 'GilroyUltraLightItalic',
    );
