import 'package:flutter/material.dart';
import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';
import 'package:ftfl_task/features/home/presentation/widgets/status_dot.dart';

class ProfileInfo extends StatelessWidget {
  final UserDataEntity profile;

  const ProfileInfo({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 8,
          children: [
            StatusDot(color: Colors.green, size: 10),
            Flexible(
              child: Text(
                profile.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(profile.age.toString(), style: const TextStyle(color: Colors.white, fontSize: 28)),
            StatusDot(
              color: Colors.pink[200]!,
              size: 22,
              child: Icon(Icons.check, color: Colors.white, size: 14),
            ),
          ],
        ),

        Row(
          children: [
            const Icon(Icons.location_on, size: 16, color: Colors.white70),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                "${profile.city}, ${profile.country}",
                style: const TextStyle(color: Colors.white70, fontSize: 15),
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),

        _InfoTile(title: profile.profession, height: profile.height, icon: Icons.work_outline),
        _InfoTile(title: profile.relationship, icon: Icons.favorite_outlined),
      ],
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String title;
  final String? height;
  final IconData? icon;
  const _InfoTile({required this.title, this.height, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        if (icon != null) ...[Icon(icon, size: 14, color: Colors.white70)],
        Flexible(
          child: Text(
            "$title - ${height ?? ''}",
            style: const TextStyle(color: Colors.white60, fontSize: 15),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
