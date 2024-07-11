import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/shared/config/styles.dart';

class ReviewerHeaderBar extends StatelessWidget {
  const ReviewerHeaderBar({super.key});
  S get strings => S.current;

  @override
  Widget build(BuildContext context) {
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 24.w,
                  child: GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: Color(0xFF1D1D1D),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      strings.review_page_title,
                      style: AppStyles.footer1TextStyle,
                    ),
                    Text(
                      strings.review_page_subtitle,
                      style: AppStyles.productTitleTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ), //
                    ),
                  ],
                ),
                SizedBox(
                  width: 24.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
