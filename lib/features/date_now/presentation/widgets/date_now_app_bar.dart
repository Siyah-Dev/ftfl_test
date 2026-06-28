import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class DateNowAppBar extends StatelessWidget {
  const DateNowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
            children: [
              TextSpan(text: "Date "),
              TextSpan(
                text: "Now",
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),

        const Spacer(),

        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.calendar_today,
                color: AppColors.white,
                size: 18,
              ),

              const SizedBox(width: 8),

              const Text(
                "My Plans",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(width: 10),

              Container(
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: const Text(
                  "2",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}