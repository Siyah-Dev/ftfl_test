import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/date_now/presentation/pages/date_now_dummy.dart';


class HostCard extends StatelessWidget {
  final DateNowDummy event;

  const HostCard({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 78,
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.white.withAlpha(40),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.white.withAlpha(40),
        ),
      ),
      child: Row(spacing:10,
        children: [
          Container(height: 50,width: 50, decoration: BoxDecoration(border: Border.all(color: AppColors.primary),shape: BoxShape.circle, image:DecorationImage(image: NetworkImage(event.hostImage),fit: BoxFit.cover) ),),
         


          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${event.hostName}, ${event.age} ✓",
                  style: const TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  event.hostBio,
                  style:  TextStyle(
                    color: AppColors.white.withAlpha(150),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          TextButton(
            onPressed: () {},
            child: const Text(
              "Profile →",
              style: TextStyle(fontSize: 12,
                color: AppColors.primaryLight,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}