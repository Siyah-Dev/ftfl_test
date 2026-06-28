import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'attachment_button.dart';

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.fromLTRB(18, 14, 18, 18),
        
        child: Row(spacing:10,
          children: [
            AttachmentButton(
              icon: Icons.add,
              onTap: () {},
            ),
            AttachmentButton(
              icon: Icons.image_outlined,
              onTap: () {},
            ),

            Expanded(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Message Arya...",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 14,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.mic_none_outlined),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),

            InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {},
              child: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}