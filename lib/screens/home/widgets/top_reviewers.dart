import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/screens/home/cubit/home_cubit.dart';
import 'package:korean_shop/screens/reviewer/reviewer_layout.dart';
import 'package:korean_shop/shared/config/assets.dart';
import 'package:korean_shop/shared/config/styles.dart';
import 'package:korean_shop/shared/config/themes.dart';
import 'package:korean_shop/shared/models/app/reviewer.dart';
import 'package:korean_shop/shared/services/network/database.dart';

class HomeTopReviewers extends StatelessWidget {
  const HomeTopReviewers({super.key});
  S get strings => S.current;
  @override
  Widget build(BuildContext context) {
    context.watch<HomeCubit>().locale;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 28.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              strings.top_reviewers_title,
              style: AppStyles.topTitleTextStyle,
            ),
            subtitle: Text(
              strings.top_reviewers_subtitle,
              style: AppStyles.topSubtitleTextStyle,
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          ),
          SizedBox(
            height: 18.h,
          ),
          SizedBox(
            height: 106.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: DatabaseServices().reviewers.map((e) => _TopReviewerTile(e)).toList(),
            ),
          )
        ],
      ),
    );
  }
}

class _TopReviewerTile extends StatelessWidget {
  final ReviewerModel reviewerModel;
  const _TopReviewerTile(this.reviewerModel);

  bool get isFirstModel => DatabaseServices().reviewers.first.id == reviewerModel.id;
  bool get isLastModel => DatabaseServices().reviewers.last.id == reviewerModel.id;

  @override
  Widget build(BuildContext context) {
    context.watch<HomeCubit>().locale;
    return Container(
      margin: EdgeInsets.only(right: isLastModel ? 0 : 18.w),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(ReviewerScreen.routeName, arguments: reviewerModel.id);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Opacity(
                opacity: isFirstModel ? 1 : 0,
                child: SvgPicture.asset(
                  AppAssets.crown,
                  color: AppThemes.gold,
                  height: 13.h,
                ),
              ),
            ),
            Container(
              width: 62.w,
              height: 62.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: isFirstModel ? Border.all(width: 4.w, color: AppThemes.gold) : null,
                image: DecorationImage(image: AssetImage(reviewerModel.imageUrl), fit: BoxFit.fitHeight),
              ),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              width: 62.w,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  reviewerModel.name,
                  style: AppStyles.topTitleTextStyle.copyWith(fontSize: 14.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
