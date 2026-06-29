import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/notification/data/dummy_notifications.dart';
import 'package:ftfl_task/features/notification/presentation/widgets/notification_card.dart';
import 'package:ftfl_task/features/notification/presentation/widgets/notification_filter_tabs.dart';
import 'package:ftfl_task/features/notification/presentation/widgets/notification_header.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F6F4),
      body: SafeArea(
        child: Column(spacing: 14,crossAxisAlignment: .start,
          children: [
            NotificationHeader(),
            NotificationFilterTabs(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                "TODAY",
                style: TextStyle(
                  color: AppColors.lightGrey,
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  letterSpacing: 1.2,
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (_, index) {
                  return NotificationCard(notification: notifications[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
