import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/screens/home/widgets/carousel_slider.dart';
import 'package:korean_shop/screens/home/widgets/footer.dart';
import 'package:korean_shop/screens/home/widgets/search_bar.dart';
import 'package:korean_shop/screens/home/widgets/top_products.dart';
import 'package:korean_shop/screens/home/widgets/top_reviewers.dart';
import 'package:korean_shop/shared/helpers/toast_helper.dart';

import 'cubit/home_cubit.dart';

part 'home_view.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..init(),
      child: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is HomeErrorState) {
            ToastHelper.of(context).showError(state.error.toString());
          }
        },
        child: const HomeView(),
      ),
    );
  }
}
