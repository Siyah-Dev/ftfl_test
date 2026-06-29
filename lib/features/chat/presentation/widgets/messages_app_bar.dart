import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';


class MessagesAppBar extends StatelessWidget {
  const MessagesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 12, 18, 0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Messages",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.grey.withValues(alpha: .15),
              ),
            ),
            child: const Icon(
              Icons.settings_outlined,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}