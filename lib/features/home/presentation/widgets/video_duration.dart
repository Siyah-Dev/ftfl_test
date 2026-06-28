import 'package:flutter/material.dart';

class VideoDuration extends StatelessWidget {
  final String duration;

  const VideoDuration({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Video intro • $duration',
      style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
    );
  }
}
