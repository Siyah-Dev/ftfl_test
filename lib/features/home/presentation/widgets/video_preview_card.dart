import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

import 'play_button.dart';
import 'video_duration.dart';

class VideoPreviewCard extends StatelessWidget {
  final String imageUrl;
  final String duration;
  final VoidCallback? onTap;

  const VideoPreviewCard({super.key, required this.imageUrl, required this.duration, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => Container(
                  color: AppColors.grey.withAlpha(10),
                  child: const Icon(Icons.image_not_supported_outlined, size: 40),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [AppColors.transparentBlack13, AppColors.transparentBlack53],
                  ),
                ),
              ),

              const Center(child: PlayButton()),

              Positioned(left: 12, bottom: 10, child: VideoDuration(duration: duration)),
            ],
          ),
        ),
      ),
    );
  }
}
