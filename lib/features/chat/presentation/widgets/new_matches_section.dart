import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

import 'match_avatar.dart';

class NewMatchesSection extends StatelessWidget {
  const NewMatchesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              const Text(
                "NEW MATCHES",
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 12,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              InkWell(onTap: () {}, child: const Text("See all ➝")),
            ],
          ),
        ),

        const SizedBox(height: 14),

        SizedBox(
          height: 95,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            children: const [
              MatchAvatar(
                image: "https://randomuser.me/api/portraits/women/10.jpg",
                name: "Sarah",
                isNew: true,
              ),

              SizedBox(width: 14),

              MatchAvatar(
                image: "https://randomuser.me/api/portraits/women/20.jpg",
                name: "Ariya",
                count: "11",
              ),

              SizedBox(width: 14),

              MatchAvatar(image: "https://randomuser.me/api/portraits/men/30.jpg", name: "Liam"),

              SizedBox(width: 14),

              MatchAvatar(image: "https://randomuser.me/api/portraits/women/40.jpg", name: "Chloe"),

              SizedBox(width: 14),

              MatchAvatar(image: "https://randomuser.me/api/portraits/men/50.jpg", name: "Dev"),
            ],
          ),
        ),
      ],
    );
  }
}
