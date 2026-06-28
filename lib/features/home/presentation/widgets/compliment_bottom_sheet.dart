import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/complement_ideas/presentation/pages/compliment_ideas_page.dart';
import 'compliment_actions.dart';
import 'compliment_like_button.dart';
import 'compliment_send_button.dart';
import 'compliment_text_field.dart';
import 'compliment_header.dart';

class ComplimentBottomSheet extends StatefulWidget {
  const ComplimentBottomSheet({super.key});

  @override
  State<ComplimentBottomSheet> createState() => _ComplimentBottomSheetState();
}

class _ComplimentBottomSheetState extends State<ComplimentBottomSheet> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;

    return AnimatedPadding(
      duration: const Duration(milliseconds: 250),
      padding: EdgeInsets.only(bottom: bottom),
      child: SafeArea(
        top: false,
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ComplimentHeader(),

                const SizedBox(height: 18),

                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: controller,
                  builder: (context, value, child) {
                    return Column(
                      children: [
                        ComplimentTextField(
  controller: controller,
  onTryPressed: () async {
    final compliment = await Navigator.push<String>(
      context,
      MaterialPageRoute(
        builder: (_) => const ComplimentIdeasPage(),
      ),
    );

    if (compliment != null) {
      controller.text = compliment;

      controller.selection = TextSelection.fromPosition(
        TextPosition(
          offset: controller.text.length,
        ),
      );
    }
  },
),

                        const SizedBox(height: 16),

                        ComplimentActions(characterCount: value.text.length),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 18),

                Row(
                  children: [
                    const ComplimentLikeButton(),

                    const SizedBox(width: 12),

                    Expanded(
                      child: ValueListenableBuilder<TextEditingValue>(
                        valueListenable: controller,
                        builder: (context, value, child) {
                          return ComplimentSendButton(
                            enabled: value.text.trim().isNotEmpty,
                            onPressed: () {
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
