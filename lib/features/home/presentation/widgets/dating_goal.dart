import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DatingGoal extends StatelessWidget {
  const DatingGoal({super.key, required this.goal});
  final String goal;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25, top: 15),
        child: Container(
          padding: const EdgeInsets.all(12),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            spacing: 8,
            crossAxisAlignment: .start,
            children: [
              Text(
                'DATING GOAL',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              ),
              Text(
                goal,
                style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text('No pressure, no timelines - just looking for the right person to build something real with', style: TextStyle(color: AppColors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
