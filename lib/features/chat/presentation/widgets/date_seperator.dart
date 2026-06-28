import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class DateSeparator extends StatelessWidget {
  const DateSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          const Expanded(child: Divider()),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "TODAY",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.4,
              ),
            ),
          ),

          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}