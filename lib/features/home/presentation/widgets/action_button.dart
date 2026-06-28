import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';

class ActionButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final Color color;
  final double size;

  const ActionButton({
    super.key,
    required this.child,
    this.onTap,
    this.color = Colors.white,
    this.size = 52,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 1,
            spreadRadius: 1,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Material(
        color: color,
        // elevation: 10,
        shadowColor: Colors.black26,
        borderRadius: BorderRadius.circular(size),
        child: InkWell(
          borderRadius: BorderRadius.circular(size),
          onTap: onTap,
          child: SizedBox(
            width: size,
            height: size,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
