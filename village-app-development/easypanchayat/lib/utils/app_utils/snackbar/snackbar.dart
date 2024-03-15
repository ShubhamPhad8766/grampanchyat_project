import 'package:flutter/material.dart';

import '../../../widgets/text_widget.dart';

class SnackBarWidget {
  static void showSnackbar(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: TextWidget(
      text: errorMessage,
    )));
  }
}
