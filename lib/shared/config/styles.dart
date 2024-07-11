import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_shop/shared/config/themes.dart';

class AppStyles {
  static const TextStyle toastTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Colors.white,
  );
  static const TextStyle mainTextStyle = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22,
    color: AppThemes.fontMain,
  );
  static TextStyle logoTextStyle = TextStyle(
    fontFamily: AppThemes.fontFamilyRoboto,
    fontSize: 24.sp,
    color: const Color(0xFF3C41BF),
    fontWeight: FontWeight.w500,
  );
  static TextStyle hintTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: const Color(0xFF868686),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle topTitleTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: const Color(0xFF616161),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle topSubtitleTextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: const Color(0xFF000000),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle productTitleTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 14.sp,
    color: const Color(0xFF1D1D1D),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle productFeatureTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: const Color(0xFF1D1D1D),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle productRatingRatioTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 10.sp,
    color: const Color(0xFFFFD233),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle productRatingCountTextStyle = productRatingRatioTextStyle.copyWith(
    color: const Color(0xFFC4C4C4),
  );
  static TextStyle productTagTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11.sp,
    color: const Color(0xFF868686),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle footer1TextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10.sp,
    color: const Color(0xFF868686),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle footer2TextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13.sp,
    color: const Color(0xFF868686),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle footer3TextStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: const Color(0xFF868686),
    fontFamily: AppThemes.fontFamily,
  );
  static TextStyle commentTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 10.sp,
    color: const Color(0xFFA0A0A0),
    fontFamily: AppThemes.fontFamily,
  );
}
