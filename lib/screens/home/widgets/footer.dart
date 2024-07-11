import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/screens/home/cubit/home_cubit.dart';
import 'package:korean_shop/shared/config/styles.dart';
import 'package:korean_shop/shared/config/themes.dart';
import 'package:korean_shop/shared/widgets/line.dart';
import 'package:intl/intl.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  S get string => S.current;

  @override
  Widget build(BuildContext context) {
    context.watch<HomeCubit>().locale;
    return Container(
      padding: EdgeInsets.fromLTRB(16.w, 20.h, 24.h, 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            string.footer_logo_inc,
            style: AppStyles.footer3TextStyle,
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                string.footer_tap_1,
                style: AppStyles.footer2TextStyle,
              ),
              Line(width: 1.w, height: 9.h, color: const Color(0xFFC8C8C8)),
              Text(
                string.footer_tap_2,
                style: AppStyles.footer2TextStyle,
              ),
              Line(width: 1.w, height: 9.h, color: const Color(0xFFC8C8C8)),
              Text(
                string.footer_tap_3,
                style: AppStyles.footer2TextStyle,
              ),
              Line(width: 1.w, height: 9.h, color: const Color(0xFFC8C8C8)),
              Text(
                string.footer_tap_4,
                style: AppStyles.footer2TextStyle,
              ),
            ],
          ),
          SizedBox(height: 18.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.send_rounded, size: 18.w, color: const Color(0xFFC8C8C8)),
              SizedBox(width: 3.w),
              Text(
                'review@logo.com',
                style: AppStyles.footer2TextStyle,
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 2.w),
                height: 24.w,
                width: 75.w,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.w), border: Border.all(color: AppThemes.fontSecondary)),
                child: DropdownButton(
                  padding: EdgeInsets.zero,
                  value: Intl.getCurrentLocale(),
                  underline: const SizedBox(),
                  isExpanded: true,
                  items: S.delegate.supportedLocales
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.languageCode,
                          child: Text(
                            e.languageCode,
                            style: AppStyles.footer1TextStyle,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (newLang) {
                    if (newLang != null) context.read<HomeCubit>().changeLanguage(newLang);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 14.h),
          Line(width: ScreenUtil().screenWidth, height: 1.h, color: const Color(0xFFC8C8C8)),
          SizedBox(height: 14.h),
          Text(
            string.footer_copyright,
            style: AppStyles.footer1TextStyle,
          ),
        ],
      ),
    );
  }
}
