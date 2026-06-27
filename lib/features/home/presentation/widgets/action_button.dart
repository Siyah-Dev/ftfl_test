import 'package:flutter/material.dart';

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
    return Material(
      color: color,
      elevation: 8,
      shadowColor: Colors.black12,
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
    );
  }
}
