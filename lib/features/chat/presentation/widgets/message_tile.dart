import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class MessageTile extends StatelessWidget {
  final String image;
  final String name;
  final int age;
  final String match;
  final String message;
  final String time;
  final bool online;
  final bool typing;
  final int unreadCount;
  final double progress;
  final String progressText;
  final VoidCallback? onTap;

  const MessageTile({
    super.key,
    required this.image,
    required this.name,
    required this.age,
    required this.match,
    required this.message,
    required this.time,
    required this.progress,
    required this.progressText,
    this.online = false,
    this.typing = false,
    this.unreadCount = 0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.fromLTRB(18, 0, 18, 14),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(22)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CircleAvatar(radius: 28, backgroundImage: NetworkImage(image)),
                if (online)
                  Positioned(
                    right: 2,
                    bottom: 2,
                    child: Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.white, width: 2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ],
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: .min,
                    children: [
                      Text(
                        "$name, $age",
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),

                      const SizedBox(width: 8),

                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColors.primaryLight.withAlpha(100),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          match,
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(time, style: TextStyle(color: Colors.grey.shade500, fontSize: 11)),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          message,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: typing ? AppColors.primary : Colors.grey.shade700,
                            fontWeight: typing ? FontWeight.w600 : FontWeight.w400,
                          ),
                        ),
                      ),if (unreadCount > 0)
                            Container(
                              width: 16,
                              height: 16,
                              decoration: const BoxDecoration(
                                color: AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                unreadCount.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                    ],
                  ),
                  const SizedBox(height: 4,),

                  Row(
                    spacing: 6,
                    mainAxisSize: .min,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: LinearProgressIndicator(
                            value: progress,
                            minHeight: 5,
                            backgroundColor: const Color(0xffF0F0F0),
                            valueColor: const AlwaysStoppedAnimation(AppColors.primary),
                          ),
                        ),
                      ),
                      Text(
                        progressText,
                        style: const TextStyle(fontSize: 11, color: Colors.grey),
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
