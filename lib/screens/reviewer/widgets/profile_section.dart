import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/screens/reviewer/cubit/reviewer_cubit.dart';
import 'package:korean_shop/shared/config/assets.dart';
import 'package:korean_shop/shared/config/styles.dart';
import 'package:korean_shop/shared/config/themes.dart';

class ReviewerProfileSection extends StatelessWidget {
  const ReviewerProfileSection({super.key});

  S get strings => S.current;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReviewerCubit>();
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 120.w,
            height: 120.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(cubit.reviewerModel.imageUrl),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            cubit.reviewerModel.name,
            style: AppStyles.topSubtitleTextStyle.copyWith(fontSize: 20.sp),
          ),
          if (cubit.isGold)
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  AppAssets.crown,
                  color: AppThemes.gold,
                  height: 19.h,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  strings.gold,
                  style: AppStyles.footer3TextStyle.copyWith(color: AppThemes.gold),
                ),
              ],
            ),
          SizedBox(
            height: 18.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            decoration: BoxDecoration(color: AppThemes.lightGrey, borderRadius: BorderRadius.circular(6.w)),
            margin: EdgeInsets.symmetric(horizontal: 12.w),
            child: Text(
              cubit.reviewerModel.desc,
              style: AppStyles.footer2TextStyle.copyWith(fontSize: 14.sp),
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
        ],
      ),
    );
  }
}
