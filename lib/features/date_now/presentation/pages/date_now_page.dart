import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/date_now/presentation/pages/date_now_dummy.dart';
import 'package:ftfl_task/features/date_now/presentation/widgets/bottom_action_buttons.dart';
import 'package:ftfl_task/features/date_now/presentation/widgets/date_now_app_bar.dart';
import 'package:ftfl_task/features/date_now/presentation/widgets/day_selector.dart';
import 'package:ftfl_task/features/date_now/presentation/widgets/event_card.dart';

class DateNowPage extends StatelessWidget {
  const DateNowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF7F8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            spacing: 10,
            children: [
              const SizedBox(height: 12),

              const DateNowAppBar(),

              const DaySelector(),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.transparentBlack13,
                        blurRadius: 30,
                        offset: const Offset(0, 18),
                      ),
                    ],
                  ),
                  child: EventCard(event: dummyDate),
                ),
              ),

              const BottomActionButtons(),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
