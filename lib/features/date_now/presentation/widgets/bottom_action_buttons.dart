import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _ActionButton(
            title: "Skip",
            icon: Icons.close,
            isPrimary: false,
            onTap: () {},
          ),
        ),

        const SizedBox(width: 14),

        Expanded(
          flex: 2,
          child: _ActionButton(
            title: "Request Date",
            icon: Icons.calendar_today,
            isPrimary: true,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isPrimary;
  final VoidCallback onTap;

  const _ActionButton({
    required this.title,
    required this.icon,
    required this.isPrimary,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(
          icon,
          size: 20,
        ),
        label: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor:
              isPrimary ? AppColors.white : AppColors.primary,
          backgroundColor:
              isPrimary ? AppColors.primary : AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: BorderSide(
              color: isPrimary
                  ? Colors.transparent
                  : Colors.grey.shade300,
            ),
          ),
        ),
      ),
    );
  }
}