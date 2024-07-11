import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/screens/home/cubit/home_cubit.dart';
import 'package:korean_shop/shared/config/assets.dart';
import 'package:korean_shop/shared/config/styles.dart';
import 'package:korean_shop/shared/config/themes.dart';
import 'package:korean_shop/shared/models/app/product.dart';
import 'package:korean_shop/shared/services/network/database.dart';

class HomeTopProducts extends StatelessWidget {
  const HomeTopProducts({super.key});

  S get strings => S.current;

  @override
  Widget build(BuildContext context) {
    context.watch<HomeCubit>().locale;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 28.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              strings.top_products_title,
              style: AppStyles.topTitleTextStyle,
            ),
            subtitle: Text(
              strings.top_products_subtitle,
              style: AppStyles.topSubtitleTextStyle,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppThemes.fontMain,
              size: 16.w,
            ),
            contentPadding: EdgeInsets.zero,
          ),
          ...DatabaseServices().topProducts.map((e) => _TopProductTile(e))
        ],
      ),
    );
  }
}

class _TopProductTile extends StatelessWidget {
  final ProductModel productModel;
  const _TopProductTile(this.productModel);

  bool get isLastModel => DatabaseServices().topProducts.last.id == productModel.id;
  int get index => DatabaseServices().topProducts.indexOf(productModel);

  Color get color {
    switch (index) {
      case 1:
        return AppThemes.silver;
      case 2:
        return AppThemes.bronze;
      default:
        return AppThemes.gold;
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<HomeCubit>().locale;
    return Container(
      height: 104.w,
      margin: EdgeInsets.only(bottom: isLastModel ? 0 : 16.h),
      child: Row(
        children: [
          Container(
            width: 104.w,
            height: 104.w,
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.w), border: Border.all(color: AppThemes.gray)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (index < 3)
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      height: 15.w,
                      width: 19.w,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: SvgPicture.asset(
                              AppAssets.crown,
                              color: color,
                            ),
                          ),
                          Positioned.fill(
                            top: 4.w,
                            child: Text(
                              '${index + 1}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: AppThemes.fontFamilyRoboto,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Image.asset(
                      productModel.imageUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.title,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.productTitleTextStyle,
                ),
                ...productModel.features.sublist(0, 2).map(
                      (e) => Text(
                        ' • $e',
                        overflow: TextOverflow.ellipsis,
                        style: AppStyles.productFeatureTextStyle,
                      ),
                    ),
                const Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: AppThemes.gold,
                      size: 10.w,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      productModel.rateRatio.toString(),
                      style: AppStyles.productRatingRatioTextStyle,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      '(${productModel.rateRatio})',
                      style: AppStyles.productRatingCountTextStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: productModel.tags
                      .map((e) => Container(
                            padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 6.w),
                            margin: EdgeInsets.only(right: 4.w),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.w), color: const Color(0xFFF0F0F0)),
                            child: Text(
                              e,
                              style: AppStyles.productTagTextStyle,
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
