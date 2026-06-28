import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/core/helpers/app_bottom_sheets.dart';
import 'package:ftfl_task/features/home/presentation/widgets/action_button.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSectionWidget extends StatelessWidget {
  const HomeSectionWidget({super.key, this.title, this.child,});
  final String? title;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
          child: Column(
            spacing: 5,
            crossAxisAlignment: .start,
            children: [
              Text(
                title ?? '',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    color: AppColors.primary,
                  ),
                ),
              ),
              ?child,
              Align(
                alignment: Alignment.bottomRight,
                child: ActionButton(
                  size: 30,
                  color: AppColors.primaryLight,
                  onTap: () {
                    AppBottomSheets.compliment(context);
                  },
                  child: const Text("🌹", style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
