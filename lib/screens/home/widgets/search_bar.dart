import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/screens/home/cubit/home_cubit.dart';
import 'package:korean_shop/shared/config/styles.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  S get strings => S.current;

  @override
  Widget build(BuildContext context) {
    context.watch<HomeCubit>().locale;
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: ScreenUtil().screenWidth,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(blurRadius: 12.w, color: Colors.black12, offset: const Offset(0, 3)),
            ]),
            padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 16.w),
            child: Text(
              S.current.logo,
              style: AppStyles.logoTextStyle,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
            child: Container(
              padding: EdgeInsets.all(1.5.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF74FBDE),
                    Color(0xFF3C41BF),
                  ],
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: strings.search_hint,
                  hintStyle: AppStyles.hintTextStyle,
                  suffixIcon: Icon(
                    Icons.search_rounded,
                    size: 28.w,
                    color: const Color(0xFF3E3DC5),
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                  errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                  disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                  focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
