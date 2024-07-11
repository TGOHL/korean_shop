import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/screens/reviewer/cubit/reviewer_cubit.dart';
import 'package:korean_shop/shared/config/assets.dart';
import 'package:korean_shop/shared/config/styles.dart';
import 'package:korean_shop/shared/config/themes.dart';
import 'package:korean_shop/shared/widgets/line.dart';
import 'package:korean_shop/shared/widgets/rating_start.dart';

class ReviewerReviewsSection extends StatelessWidget {
  const ReviewerReviewsSection({super.key});
  S get strings => S.current;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReviewerCubit>();

    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              children: [
                Text(
                  strings.written_review,
                  style: AppStyles.topSubtitleTextStyle.copyWith(fontSize: 16.sp),
                ),
                Text(
                  strings.total(35),
                  style: AppStyles.topTitleTextStyle,
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 10.w, right: 2.w),
                  height: 24.w,
                  width: 75.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.w), border: Border.all(color: AppThemes.fontSecondary)),
                  child: DropdownButton(
                    padding: EdgeInsets.zero,
                    value: 1,
                    underline: const SizedBox(),
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        value: 1,
                        child: Text(
                          strings.latest,
                          style: AppStyles.footer1TextStyle,
                        ),
                      )
                    ],
                    onChanged: (newVal) {},
                  ),
                ),
              ],
            ),
          ),
          Line(width: ScreenUtil().screenWidth, height: 1.h, color: AppThemes.lightGrey),
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 8.h),
            child: Row(
              children: [
                Container(
                  width: 104.w,
                  height: 104.w,
                  padding: EdgeInsets.all(6.w),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.w), border: Border.all(color: AppThemes.gray)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Image.asset(
                        cubit.product.imageUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        cubit.product.title,
                        style: AppStyles.topSubtitleTextStyle.copyWith(fontSize: 14.sp),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          RatingStars(
                            rate: cubit.product.rateRatio,
                            size: 24,
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            '${cubit.product.rateRatio}',
                            style: AppStyles.topSubtitleTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Line(width: ScreenUtil().screenWidth, height: 1.h, color: AppThemes.lightGrey),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
            leading: Container(
              width: 34.w,
              height: 34.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(cubit.reviewerModel.imageUrl),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            title: Text(
              cubit.reviewerModel.name,
              style: AppStyles.topSubtitleTextStyle.copyWith(fontSize: 14.sp), //
            ),
            subtitle: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                RatingStars(
                  rate: cubit.latestReview.rate.toDouble(),
                  size: 16,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  DateFormat('yyyy.MM.dd').format(cubit.latestReview.date),
                  style: AppStyles.footer1TextStyle,
                ),
              ],
            ),
            trailing: Icon(
              Icons.bookmark_outline_rounded,
              size: 24.h,
              color: AppThemes.demiGrey,
            ),
          ),
          Container(
            height: 16.h,
            margin: EdgeInsets.fromLTRB(0, 12.h, 0, 18.h),
            child: ListView(
              padding: EdgeInsets.only(left: 20.w),
              scrollDirection: Axis.horizontal,
              children: cubit.latestReview.commments.map((e) {
                return Container(
                  margin: EdgeInsets.only(right: 16.w),
                  child: Text(
                    '“$e”',
                    style: AppStyles.commentTextStyle,
                  ),
                );
              }).toList(),
            ),
          ),
          _ReviewProsConsTile(
            isPro: true,
            text: cubit.latestReview.pro,
          ),
          _ReviewProsConsTile(
            isPro: false,
            text: cubit.latestReview.con,
          ),
          SizedBox(
            height: 70.w,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 44.w),
              children: cubit.latestReview.imagesUrls
                  .map((e) => Container(margin: EdgeInsets.only(right: 10.w), child: Image.asset(e, width: 70.w, height: 70.w)))
                  .toList(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 12.h),
            child: Line(width: ScreenUtil().screenWidth, height: 1.h, color: AppThemes.lightGrey),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Icon(
                  Icons.chat,
                  size: 16.h,
                  color: const Color(0xFFC4C4C4),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                      hintText: strings.leave_comment,
                      hintStyle: AppStyles.hintTextStyle,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                      disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                      focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.w), borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ReviewProsConsTile extends StatelessWidget {
  final bool isPro;
  final String text;
  const _ReviewProsConsTile({required this.text, required this.isPro});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w).copyWith(bottom: 18.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.h, right: 10.w),
            child: SvgPicture.asset(
              AppAssets.thunder,
              color: isPro ? const Color(0xFF3E3DC5) : const Color(0xFFD7D7D7),
              height: 20.h,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: AppStyles.topTitleTextStyle.copyWith(fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}
