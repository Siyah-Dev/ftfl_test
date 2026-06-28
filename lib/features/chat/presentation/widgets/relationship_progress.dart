import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';


class RelationshipProgress extends StatelessWidget {
  const RelationshipProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                "RELATIONSHIP PROGRESS",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff7D7D7D),
                ),
              ),

              Spacer(),

              Text(
                "LEVEL 5",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: LinearProgressIndicator(
              minHeight: 6,
              value: .72,
              backgroundColor: const Color(0xffF6E8EC),
              valueColor: const AlwaysStoppedAnimation(
                AppColors.primary,
              ),
            ),
          ),

          const SizedBox(height: 5),

          Row(spacing: 4,
            children: const [
              Icon(
                Icons.stars_rounded,
                size: 14,
                color: Color(0xffE9AE3A),
              ),

              Text(
                "Milestone reached:",
                style: TextStyle(
                  fontSize: 11,
                  color: AppColors.grey,
                ),
              ),

              Text(
                "Premium Badge unlocked",
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}