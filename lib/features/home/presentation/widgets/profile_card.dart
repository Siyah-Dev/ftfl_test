import 'package:flutter/material.dart';
import 'package:ftfl_task/core/helpers/app_bottom_sheets.dart';
import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';

import 'action_button.dart';
import 'profile_badges.dart';
import 'profile_gradient.dart';
import 'profile_image.dart';
import 'profile_info.dart';

class ProfileCard extends StatelessWidget {
  final UserDataEntity profile;

  final VoidCallback? onGiftPressed;
  final VoidCallback? onMenuPressed;

  const ProfileCard({super.key, required this.profile, this.onGiftPressed, this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(34),
      child: Material(
        elevation: 10,
        shadowColor: Colors.black26,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ProfileImage(image: profile.image ?? ''),

            const ProfileGradient(),

            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    ActionButton(
                      size: 44,
                      color: Colors.white,
                      onTap: onMenuPressed,
                      child: const Icon(Icons.replay_outlined),
                    ),
                    ActionButton(
                      size: 44,
                      color: Colors.white,
                      onTap: onMenuPressed,
                      child: const Icon(Icons.more_horiz),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              left: 20,
              right: 20,
              bottom: 24,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileBadges(
                    match: profile.match,
                    trust: profile.trust,
                    replyTime: profile.formattedReplyTime ?? '',
                  ),

                  const SizedBox(height: 18),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: ProfileInfo(profile: profile)),

                      const SizedBox(width: 16),

                      ActionButton(
                        size: 44,
                        color: Colors.white,
                        onTap: () {
                          AppBottomSheets.compliment(context);
                        },
                        child: const Text("🌹", style: TextStyle(fontSize: 22)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
