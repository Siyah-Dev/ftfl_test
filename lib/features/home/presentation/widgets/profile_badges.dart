import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ftfl_task/features/home/presentation/widgets/status_dot.dart';

class ProfileBadges extends StatelessWidget {
  final num match;
  final num trust;
  final String replyTime;
  final Color? badgeColor;
  final Color? labelColor;
  const ProfileBadges({
    super.key,
    required this.match,
    required this.trust,
    required this.replyTime,
    this.badgeColor,
    this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        _Badge(
          color: Colors.blue,
          text: "$match% Match",
          badgeColor: badgeColor,
          labelColor: labelColor,
        ),
        _Badge(
          color: Colors.green,
          text: "$trust% Trust",
          badgeColor: badgeColor,
          labelColor: labelColor,
        ),
        _Badge(
          color: Colors.orange,
          text: replyTime,
          badgeColor: badgeColor,
          labelColor: labelColor,
        ),
      ],
    );
  }
}

class _Badge extends StatelessWidget {
  final Color color;
  final String text;
  final Color? badgeColor;
  final Color? labelColor;
  const _Badge({required this.color, required this.text, this.badgeColor, this.labelColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: badgeColor ?? Colors.white.withOpacity(.18),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white24),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              StatusDot(color: color),
              const SizedBox(width: 6),
              Text(
                text,
                style: TextStyle(
                  color: labelColor ?? Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
