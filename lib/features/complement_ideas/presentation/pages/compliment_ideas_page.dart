import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import '../widgets/compliment_idea_card.dart';
import '../widgets/compliment_category_chip.dart';
import '../widgets/use_compliment_button.dart';

class ComplimentIdeasPage extends StatefulWidget {
  const ComplimentIdeasPage({super.key});

  @override
  State<ComplimentIdeasPage> createState() => _ComplimentIdeasPageState();
}

class _ComplimentIdeasPageState extends State<ComplimentIdeasPage> {
  final List<String> categories = const ['Sweet', 'Playful', 'Admiring', 'Flirty', 'Funny'];

  int selectedCategory = 3;

  String? selectedCompliment;

  final List<String> compliments = [
    "Not gonna lie, your smile stopped my scroll 😍",
    "You're trouble, I can already tell — the good kind.",
    "If you're as fun in person as your profile, I'm in.",
    "I think we'd make a dangerously good team ☕📱",
    "You've got a vibe I can't quite look away from.",
    "Coffee, you, and good conversation — when's good for you?",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F4),

      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.complimentGradientStart,
                    AppColors.complimentGradientMiddle,
                    AppColors.complimentGradientEnd,
                  ],
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 12),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Icon(Icons.chat_bubble_outline_rounded, size: 54),

                  const SizedBox(height: 12),

                  const Text(
                    'Compliment Ideas',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),

                  const Text(
                    'pick one to make a great first impression',
                    style: TextStyle(color: AppColors.black),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            SizedBox(
              height: 42,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return ComplimentCategoryChip(
                    title: categories[index],
                    selected: selectedCategory == index,
                    onTap: () {
                      setState(() {
                        selectedCategory = index;
                      });
                    },
                  );
                },
                separatorBuilder: (_, _) => const SizedBox(width: 5),
                itemCount: categories.length,
              ),
            ),

            const SizedBox(height: 15),

            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: compliments.length,
                separatorBuilder: (_, _) => const SizedBox(height: 10),
                itemBuilder: (_, index) {
                  final compliment = compliments[index];

                  return ComplimentIdeaCard(
                    text: compliment,
                    selected: selectedCompliment == compliment,
                    onTap: () {
                      setState(() {
                        selectedCompliment = compliment;
                      });
                    },
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: UseComplimentButton(
                enabled: selectedCompliment != null,
                onPressed: selectedCompliment == null
                    ? null
                    : () {
                        Navigator.pop(context, selectedCompliment);
                      },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
