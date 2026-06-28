import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class InfoChip extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? background;
  final Color? iconColor;

  const InfoChip({
    super.key,
    required this.icon,
    required this.text,
    this.background,
    this.iconColor,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: background??AppColors.white.withAlpha(40),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 15,
            color:iconColor?? AppColors.white,
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}