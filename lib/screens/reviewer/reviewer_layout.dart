import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/screens/reviewer/widgets/header_bar.dart';
import 'package:korean_shop/screens/reviewer/widgets/profile_section.dart';
import 'package:korean_shop/screens/reviewer/widgets/reviews_section.dart';

import 'package:korean_shop/shared/helpers/toast_helper.dart';

import 'cubit/reviewer_cubit.dart';

part 'reviewer_view.dart';

class ReviewerScreen extends StatelessWidget {
  static const routeName = '/review-screen';

  const ReviewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context)!.settings.arguments as String;
    return BlocProvider(
      create: (context) => ReviewerCubit()..init(id),
      child: BlocListener<ReviewerCubit, ReviewerState>(
        listener: (context, state) {
          if (state is ReviewerErrorState) {
            ToastHelper.of(context).showError(state.error.toString());
          }
        },
        child: const ReviewerView(),
      ),
    );
  }
}
