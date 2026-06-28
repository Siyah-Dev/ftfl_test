import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/home/presentation/model/personal_info_card_model.dart';

class PersonalInfoCardTile extends StatelessWidget {
  final PersonalInfoCardModel item;

  const PersonalInfoCardTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Row(
        children: [
          Icon(item.icon, size: 18, color: AppColors.primary),

          const SizedBox(width: 14),

          Expanded(child: Text(item.title)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(item.value, style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),

              if (item.subtitle != null)
                Text(item.subtitle!, style: TextStyle(fontSize: 12, color: AppColors.grey)),
            ],
          ),
        ],
      ),
    );
  }
}
