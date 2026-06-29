import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/filter_tabs.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/messages_app_bar.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/messages_list.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/new_matches_section.dart';
import 'package:ftfl_task/features/chat/presentation/widgets/search_bar_widget.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffold,
      body: SafeArea(
        child: Column(spacing:12,
  children: const [
    MessagesAppBar(),

    // SizedBox(height: 18),

    Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: SearchBarWidget(),
    ),

    NewMatchesSection(),
    FilterTabs(),
    Expanded(
      child: MessageList(),
    ),
  ],
)
      ),
    );
  }
}
