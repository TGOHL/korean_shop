import 'package:flutter/material.dart';
import 'package:korean_shop/screens/reviewer/reviewer_layout.dart';

import '../../screens/home/home_layout.dart';

class AppRouter {
  static Map<String, Widget Function(dynamic)> router() {
    return {
      '/': (ctx) => const HomeScreen(),
      HomeScreen.routeName: (ctx) => const HomeScreen(),
      ReviewerScreen.routeName: (ctx) => const ReviewerScreen(),
    };
  }
}
