import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class ComplimentTextField extends StatelessWidget {
  final TextEditingController controller;
   final VoidCallback? onTryPressed;

  const ComplimentTextField({
    super.key,
    required this.controller,
     this.onTryPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.lightGrey.withAlpha(100),
        ),
      ),
      child: Stack(
        children: [
          TextField(
            controller: controller,
            maxLength: 140,
            maxLines: null,
            expands: true,
            textAlignVertical: TextAlignVertical.top,
            decoration: const InputDecoration(
              counterText: '',
              hintText: 'Write a sweet compliment...',
              hintStyle: TextStyle(
                color: AppColors.lightGrey,
                fontSize: 15,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.fromLTRB(
                16,
                14,
                90,
                14,
              ),
            ),
          ),

          Positioned(
            right: 10,
            bottom: 10,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: onTryPressed,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffFFF8EF),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: const Color(0xffF3D8B0),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '💡',
                      style: TextStyle(fontSize: 13),
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Try',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffD89A33),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}