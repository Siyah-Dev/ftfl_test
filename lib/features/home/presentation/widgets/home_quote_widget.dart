import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/core/helpers/app_bottom_sheets.dart';
import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';
import 'package:ftfl_task/features/home/presentation/widgets/action_button.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeQuoteWidget extends StatelessWidget {
  const HomeQuoteWidget({super.key, this.title, required this.profile});
  final String? title;
  final UserDataEntity profile;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            spacing: 8,
            crossAxisAlignment: .start,
            children: [
              if (title != null)
                Text(
                  title!,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              Text(
                profile.quote ?? '',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              ActionButton(
                size: 30,
                color: AppColors.white,
                onTap: () {
                  AppBottomSheets.compliment(context);
                },
                child: const Text("🌹", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
