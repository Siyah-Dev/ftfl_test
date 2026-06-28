import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class AttachmentButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const AttachmentButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: AppColors.white,
          shape: BoxShape.circle
        ),
        child: Icon(
          icon,
          size: 20,
          color: Colors.grey.shade700,
        ),
      ),
    );
  }
}