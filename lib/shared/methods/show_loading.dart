import 'package:flutter/material.dart';

import '../config/themes.dart';

void showLoadingScreen(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) {
      return PopScope(
        onPopInvoked: (val) => false,
        child: const Center(
          child: CircularProgressIndicator(
            color: AppThemes.secondaryLight,
          ),
        ),
      );
    },
  );
}
