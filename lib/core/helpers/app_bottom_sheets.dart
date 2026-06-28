import 'package:flutter/material.dart';
import 'package:ftfl_task/features/home/presentation/widgets/compliment_bottom_sheet.dart';

class AppBottomSheets {
  const AppBottomSheets._();

  static Future<void> compliment(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const ComplimentBottomSheet(),
    );
  }
}