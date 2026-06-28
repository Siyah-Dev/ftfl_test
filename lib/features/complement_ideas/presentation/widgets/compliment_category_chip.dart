import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class ComplimentCategoryChip extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const ComplimentCategoryChip({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          // vertical: 5,
        ),
        decoration: BoxDecoration(
          color: selected
              ? AppColors.primary
              : AppColors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: selected ? AppColors.white : AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}