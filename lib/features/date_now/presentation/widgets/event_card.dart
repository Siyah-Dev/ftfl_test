import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/date_now/presentation/pages/date_now_dummy.dart';
import 'package:ftfl_task/features/date_now/presentation/widgets/host_card.dart';
import 'package:ftfl_task/features/date_now/presentation/widgets/info_chip.dart';
import 'package:ftfl_task/features/date_now/presentation/widgets/section_badge.dart';

class EventCard extends StatelessWidget {
  final DateNowDummy event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(event.image, fit: BoxFit.cover),

          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Color(0x66000000),
                  Color(0xDD000000),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SectionBadge(text: event.venue, color: AppColors.green, icon: Icons.circle),
                  ],
                ),

                const SizedBox(height: 10),

                SectionBadge(
                  text: event.distance,
                  color: AppColors.black,
                  icon: Icons.location_on,
                  iconColor: AppColors.primary,
                ),

                const Spacer(),

                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    InfoChip(
                      icon: Icons.calendar_today,
                      text: "TODAY",
                      background: AppColors.primary,
                    ),
                    InfoChip(
                      icon: Icons.access_time,
                      text: "8:30 PM",
                      background: AppColors.white.withAlpha(50),
                    ),
                    InfoChip(
                      icon: Icons.restaurant,
                      text: "Dinner",
                      background: AppColors.white.withAlpha(50),
                    ),
                  ],
                ),
                const SizedBox(height: 4,),
                Row(mainAxisAlignment: .spaceBetween,crossAxisAlignment: .end,
                  children: [
                    Column(
                      children: [
                        Text(
                          event.title,
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        Text(
                          event.subtitle,
                          style: TextStyle(color: AppColors.white.withAlpha(150), fontSize: 16),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 26,
                      right: 22,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColors.primaryLight.withAlpha(50),
                          shape: BoxShape.circle
                        ),
                        child:  Icon(Icons.flag_outlined, color: AppColors.primary.withAlpha(150), size: 20),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                const Wrap(
                  spacing: 8,
                  children: [
                    InfoChip(text: "88% match", icon: Icons.favorite, iconColor: AppColors.purple),
                    InfoChip(text: "Just 1", icon: Icons.person, iconColor: AppColors.blue),
                    InfoChip(text: "I'll pay", icon: Icons.wallet, iconColor: AppColors.yellow),
                  ],
                ),

                const SizedBox(height: 18),

                HostCard(event: event),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
