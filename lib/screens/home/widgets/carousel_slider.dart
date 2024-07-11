import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_shop/screens/home/cubit/home_cubit.dart';
import 'package:korean_shop/shared/config/assets.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<HomeCubit>().locale;
    return Stack(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 221.h,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              context.read<HomeCubit>().setCarouselIndex = index;
            },
          ),
          itemCount: AppAssets.adsImages.length,
          itemBuilder: (_, index, realIndex) {
            return Builder(
              builder: (BuildContext context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    AppAssets.adsImages[index],
                    width: ScreenUtil().screenWidth,
                    fit: BoxFit.fitWidth,
                  ),
                );
              },
            );
          },
        ),
        const Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: _CarouselDotsIndecator(),
        )
      ],
    );
  }
}

class _CarouselDotsIndecator extends StatelessWidget {
  const _CarouselDotsIndecator();
  @override
  Widget build(BuildContext context) {
    context.watch<HomeCubit>().locale;
    int index = context.watch<HomeCubit>().carouselIndex;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        AppAssets.adsImages.length,
        (i) => Container(
          height: 4.w,
          width: index == i ? 9.w : 4.w,
          margin: EdgeInsets.symmetric(horizontal: 2.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.w),
            color: index == i ? Colors.white : Colors.white38,
          ),
        ),
      ),
    );
  }
}
