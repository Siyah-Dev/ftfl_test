import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/home/data/model/interest_item_model.dart';
import 'package:ftfl_task/features/home/domain/entities/interest_entity.dart';
import 'package:ftfl_task/features/home/presentation/utils/insert_icon.dart';

class InterestChip extends StatelessWidget {
  final InterestEntity item;
  final VoidCallback? onTap;

  const InterestChip({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: AppColors.grey.withAlpha(10)),
          boxShadow: [
            BoxShadow(
              color: AppColors.black,
              blurRadius: 0.8,
              spreadRadius: -1,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: AppColors.primaryLight.withAlpha(70),
              child: Icon(InsertIcons.fromName(item.icon), size: 18, color: AppColors.primary),
            ),
            const SizedBox(width: 8),
            Text(
              item.title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
