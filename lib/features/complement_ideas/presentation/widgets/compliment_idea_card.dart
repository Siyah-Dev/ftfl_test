import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class ComplimentIdeaCard extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const ComplimentIdeaCard({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const pink = AppColors.primary;

    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 14,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: selected ? pink : AppColors.white,
            width: selected ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: .03),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  height: 1.45,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (selected) ...[
              const SizedBox(width: 12),
              Container(
                width: 26,
                height: 26,
                decoration: const BoxDecoration(
                  color: pink,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check,
                  color: AppColors.white,
                  size: 16,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}