import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class DaySelector extends StatefulWidget {
  const DaySelector({super.key});

  @override
  State<DaySelector> createState() => _DaySelectorState();
}

class _DaySelectorState extends State<DaySelector> {
  int selectedIndex = 0;

  final items = const [
    "Today",
    "Tomorrow",
    "Weekend",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        items.length,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: index == items.length - 1 ? 0 : 10,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: 46,
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ? AppColors.primaryLight
                      : AppColors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: selectedIndex == index
                        ? AppColors.primary
                        : AppColors.white,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  items[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: selectedIndex == index
                        ? AppColors.primary
                        : AppColors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}