import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class ComplimentActions extends StatelessWidget {
  const ComplimentActions({super.key, required this.characterCount});
  final int characterCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _ActionChip(icon: '🌹', text: 'Rose', onTap: () {}),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _ActionChip(icon: '🎁', text: 'Select Gift', onTap: () {}),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '$characterCount/140',
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xff8E8E8E),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}

class _ActionChip extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onTap;

  const _ActionChip({required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: AppColors.grey.withAlpha(50)),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(icon, style: const TextStyle(fontSize: 16)),
              const SizedBox(width: 8),
              Text(text, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
