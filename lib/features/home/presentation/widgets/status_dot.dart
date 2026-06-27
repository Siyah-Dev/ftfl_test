import 'package:flutter/material.dart';

class StatusDot extends StatelessWidget {
  final Color color;
  final double size;
  final Widget? child;
  const StatusDot({super.key, this.color = const Color(0xFF00C853), this.size = 8, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        // boxShadow: [BoxShadow(color: color.withOpacity(.45), blurRadius: 8, spreadRadius: 1)],
      ),
      child: child,
    );
  }
}
