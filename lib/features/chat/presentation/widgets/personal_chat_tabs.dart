import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';


class PersonalChatTabs extends StatelessWidget {
  const PersonalChatTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(spacing:10,
          mainAxisSize: MainAxisSize.min,
          children: const [
            _TabButton(
              title: 'Gifts',
              count: '12',
              icon: Icons.card_giftcard,
              selected: true,
            ),
            _TabButton(
              title: 'Compliments',
              icon: Icons.chat_bubble_outline,
            ),
            _TabButton(
              title: 'Date Invites',
              icon: Icons.mail_outline,
            ),
            
          ],
        ),
      ),
    );
  }
}

class _TabButton extends StatelessWidget {
  final String title;
  final String? count;
  final IconData icon;
  final bool selected;

  const _TabButton({
    required this.title,
    required this.icon,
    this.count,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(6) ,
      decoration: BoxDecoration(
        color: selected ? AppColors.primary : AppColors.white,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(
          color: selected
              ? AppColors.primary
              : AppColors.grey.withValues(alpha: .18),
        ),
      ),
      child: Row(spacing:4,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 16,
            color: selected ? AppColors.white : AppColors.black,
          ),


          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: selected ?AppColors.white : AppColors.black,
            ),
          ),

          if (count != null) ...[
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                color: AppColors.white.withValues(alpha: .25),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                count!,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]
        ],
      ),
    );
  }
}