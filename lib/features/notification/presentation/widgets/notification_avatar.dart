import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class NotificationAvatar extends StatelessWidget {
  final String image;
  final bool online;
  final bool showRose;

  const NotificationAvatar({
    super.key,
    required this.image,
    this.online = false,
    this.showRose = false,
  });

  @override
  Widget build(BuildContext context) {
    // Date request notification (Calendar icon)
    if (image.isEmpty) {
      return Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.lightOrange,
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Icon(
          Icons.calendar_today_rounded,
          color: AppColors.orange,
          size: 24,
        ),
      );
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 28,
          backgroundImage: NetworkImage(image),
        ),

        // Online Indicator
        if (online)
          Positioned(
            right: 0,
            bottom: 2,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: AppColors.green,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.white,
                  width: 3,
                ),
              ),
            ),
          ),

        // Rose Badge
        if (showRose)
          Positioned(
            right: -2,
            bottom: -2,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.white,
                  width: 2,
                ),
              ),
              child: const Icon(
                Icons.local_florist_rounded,
                size: 11,
                color: AppColors.white,
              ),
            ),
          ),
      ],
    );
  }
}