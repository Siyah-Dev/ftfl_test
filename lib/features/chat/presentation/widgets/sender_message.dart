import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';


class SenderMessage extends StatelessWidget {
  final String message;
  final bool isMe;
  final String time;

  const SenderMessage({
    super.key,
    required this.message,
    required this.isMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: isMe ? 70 : 18,
        right: isMe ? 18 : 70,
      ),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 14,
            ),
            decoration: BoxDecoration(
              color: isMe
                  ? AppColors.primary
                  : AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(22),
                topRight: const Radius.circular(22),
                bottomLeft:
                    Radius.circular(isMe ? 22 : 6),
                bottomRight:
                    Radius.circular(isMe ? 6 : 22),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: .04),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Text(
              message,
              style: TextStyle(
                color: isMe
                    ? AppColors.white
                    : AppColors.black,
                fontSize: 15,
                height: 1.45,
              ),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            time,
            style: TextStyle(
              fontSize: 11,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}