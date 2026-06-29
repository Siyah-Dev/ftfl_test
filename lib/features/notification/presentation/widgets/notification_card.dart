import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/notification/presentation/model/notification_item_model.dart';
import 'package:ftfl_task/features/notification/presentation/model/notification_model.dart';
import 'notification_action_button.dart';
import 'notification_avatar.dart';

class NotificationCard extends StatelessWidget {
  final NotificationItemModel notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
       
        color: AppColors.white,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(color: AppColors.cardShadow, blurRadius: 14, offset: Offset(0, 4)),
        ],
      ),
      child: Stack(
        children: [
          Row(spacing:10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationAvatar(
                image: notification.image,
                online: notification.online,
                showRose: notification.type == NotificationType.rose,
              ),

           

              Expanded(
                child: Column(spacing:5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notification.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: AppColors.black,
                      ),
                    ),


                    Text(
                      notification.message,
                      style: const TextStyle(
                        color: AppColors.textGrey,
                        fontStyle: FontStyle.italic,
                        height: 1.4,
                        fontSize: 13,
                      ),
                    ),

                    const SizedBox(height: 3),

                    Text(
                      notification.time,
                      style: const TextStyle(color: AppColors.lightGrey, fontSize: 12),
                    ),

                    if (notification.actionText != null) ...[
                      const SizedBox(height: 14),
                      NotificationActionButton(text: notification.actionText!),
                    ],
                  ],
                ),
              ),
            ],
          ),

          if (notification.unread)
            Positioned(
              top: 2,
              right: 2,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
              ),
            ),
        ],
      ),
    );
  }
}
