import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';


class PersonalChatAppBar extends StatelessWidget {
  const PersonalChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 10, 18, 0),
      child: Row(
        children: [
          _circleButton(Icons.arrow_back_ios_new),

          const SizedBox(width: 12),

          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Image.network(
              "https://randomuser.me/api/portraits/women/65.jpg",
              width: 42,
              height: 42,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Aanya",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(width: 8),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "PLATINUM",
                        style: TextStyle(
                          color: Color(0xffF6C95E),
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      width: 6  ,
                      height: 6 ,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),

                    const SizedBox(width: 5),

                    const Text(
                      "Online",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          _circleButton(Icons.call_outlined),

          const SizedBox(width: 10),

          _circleButton(Icons.videocam_outlined),

          const SizedBox(width: 10),
           InkWell(onTap: () {
             
           },child: Icon(Icons.more_vert))

        ],
      ),
    );
  }

  Widget _circleButton(IconData icon) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.grey.withValues(alpha: .15),
        ),
      ),
      child: Icon(
        icon,
        size: 18,
        color: AppColors.primary,
      ),
    );
  }
}