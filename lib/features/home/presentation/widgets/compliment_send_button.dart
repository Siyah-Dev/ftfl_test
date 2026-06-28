import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class ComplimentSendButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback? onPressed;

  const ComplimentSendButton({
    super.key,
    required this.enabled,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final Color background = enabled
        ? AppColors.primary
        : AppColors.primaryLight;

    return SizedBox(
      height: 52,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: background,
          disabledBackgroundColor: background,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Text(
          'Send Compliment',
          style: TextStyle(color: AppColors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}