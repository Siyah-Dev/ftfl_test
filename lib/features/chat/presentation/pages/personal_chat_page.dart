import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/chat_input_bar.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/date_seperator.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/gift_message_card.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/personal_chat_app_bar.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/personal_chat_tabs.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/relationship_progress.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/sender_message.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/venue_card.dart';

class PersonalChatPage extends StatelessWidget {
  const PersonalChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,

      body: SafeArea(
        child: Column(
          children: [
            const PersonalChatAppBar(),

            const SizedBox(height: 14),

            const RelationshipProgress(),

            const SizedBox(height: 16),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  spacing: 10,
                  children: const [
                    PersonalChatTabs(),
                    VenueCard(),
                    DateSeparator(),
                    Text(
                      "You reacted to Arya's about",
                      style: TextStyle(fontSize: 10, color: AppColors.grey),
                    ),
                    SenderMessage(
                      message: "Hey! Looking forward to meeting you tomorrow 😊",
                      isMe: false,
                      time: "09:24 AM",
                    ),
                    SenderMessage(
                      message: "Me too! Blue Tokai sounds perfect.",
                      isMe: true,
                      time: "09:25 AM",
                    ),
                    GiftMessageCard(),

                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            const ChatInputBar(),
          ],
        ),
      ),
    );
  }
}
