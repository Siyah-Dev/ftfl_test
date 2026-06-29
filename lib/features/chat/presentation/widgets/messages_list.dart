import 'package:flutter/material.dart';
import 'package:ftfl_task/features/chat/presentation/pages/personal_chat_page.dart';

import 'message_tile.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(
          const Duration(seconds: 1),
        );
      },
      child: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          MessageTile(
            image:
                "https://randomuser.me/api/portraits/women/65.jpg",
            name: "Aanya",
            age: 25,
            match: "92% Match",
            message:
                "Can't wait to see you tonight ☕",
            time: "2m",
            unreadCount: 2,
            progress: .72,
            progressText: "🎁 Gift unlocked!",
            online: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PersonalChatPage(),
                ),
              );
            },
          ),

          MessageTile(
            image:
                "https://randomuser.me/api/portraits/men/44.jpg",
            name: "Jordan",
            age: 27,
            match: "88% Match",
            message: "Typing...",
            time: "Now",
            progress: .55,
            progressText: "18/25 Premium Rose",
            typing: true,
            online: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PersonalChatPage(),
                ),
              );
            },
          ),

          MessageTile(
            image:
                "https://randomuser.me/api/portraits/men/36.jpg",
            name: "Marcus",
            age: 29,
            match: "75% Match",
            message:
                "That sounds like an amazing hobby!",
            time: "1h",
            progress: .30,
            progressText: "5/25 Deadline 14h",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PersonalChatPage(),
                ),
              );
            },
          ),

          MessageTile(
            image:
                "https://randomuser.me/api/portraits/women/31.jpg",
            name: "Elena",
            age: 23,
            match: "95% Match",
            message:
                "You: Hey! I'm heading over now.",
            time: "3h",
            progress: .62,
            progressText: "22/25 Silver Ring",
            online: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const PersonalChatPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}