import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_shop/shared/config/themes.dart';

class RatingStars extends StatelessWidget {
  final double rate;
  final int max;
  final int size;
  const RatingStars({super.key, required this.rate, this.max = 5, this.size = 19});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        max,
        (index) => Icon(
          Icons.star_rounded,
          color: rate.toInt() > index ? AppThemes.gold : AppThemes.lightGrey,
          size: size.h,
        ),
      ).toList(),
    );
  }
}
