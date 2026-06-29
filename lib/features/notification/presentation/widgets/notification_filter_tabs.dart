import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class NotificationFilterTabs extends StatelessWidget {
  const NotificationFilterTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: const [
          _FilterChip(
            title: 'All',
            count: '56',
            selected: true,
          ),
          SizedBox(width: 10),
          _FilterChip(title: 'Likes & roses'),
          SizedBox(width: 10),
          _FilterChip(title: 'Matches'),
          SizedBox(width: 10),
          _FilterChip(title: 'Gifts'),
          SizedBox(width: 10),
          _FilterChip(title: 'Dates'),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String title;
  final String? count;
  final bool selected;

  const _FilterChip({
    required this.title,
    this.count,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: selected ? AppColors.black : AppColors.white,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: AppColors.black,
        ),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: selected ? AppColors.white : AppColors.black,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
          if (count != null) ...[
            const SizedBox(width: 6),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: selected
                    ? AppColors.white.withValues(alpha: .15)
                    : AppColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                count!,
                style: TextStyle(
                  color: selected ? AppColors.white : AppColors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}