import 'package:flutter/material.dart';

class ComplimentHeader extends StatelessWidget {
  const ComplimentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle small = const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      letterSpacing: 1,
      color: Color(0xff8D8D8D),
    );

    TextStyle value = const TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
    );

    return Column(
      children: [
        Container(
          width: 46,
          height: 5,
          decoration: BoxDecoration(
            color: const Color(0xffDDDDDD),
            borderRadius: BorderRadius.circular(20),
          ),
        ),

        const SizedBox(height: 14),

        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'COMPLIMENTING',
            style: small,
          ),
        ),

        const SizedBox(height: 2),

        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Prompt',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        const SizedBox(height: 14),

        Row(
          children: [
            _InfoItem(
              icon: '💬',
              value: '3 comments',
              style: value,
            ),

            const SizedBox(width: 18),

            _InfoItem(
              icon: '🌹',
              value: '2 roses',
              style: value,
            ),

            const SizedBox(width: 18),

            _InfoItem(
              icon: '🪙',
              value: '5,258 balance',
              style: value,
            ),
          ],
        ),
      ],
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String icon;
  final String value;
  final TextStyle style;

  const _InfoItem({
    required this.icon,
    required this.value,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(icon, style: const TextStyle(fontSize: 14)),
        const SizedBox(width: 4),
        Text(value, style: style),
      ],
    );
  }
}