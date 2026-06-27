import 'package:flutter/material.dart';

class ProfileGradient extends StatelessWidget {
  const ProfileGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.transparent,
              Color(0x33000000),
              Color(0xAA000000),
              Color(0xEE000000),
            ],
            stops: [0, .45, .65, .82, 1],
          ),
        ),
      ),
    );
  }
}
