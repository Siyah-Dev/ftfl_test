import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BigDreamWidget extends StatelessWidget {
  const BigDreamWidget({super.key, required this.content});
  final String content;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: .start,
      children: [
        Divider(height: 1),
        Text(
          "HER BIG DREAM",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
              color: AppColors.primary,
            ),
          ),
        ),
        Text(content, style: TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
