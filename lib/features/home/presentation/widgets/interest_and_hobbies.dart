import 'package:flutter/material.dart';
import 'package:ftfl_task/features/home/domain/entities/interest_entity.dart';
import 'package:ftfl_task/features/home/presentation/widgets/iterest_chip.dart';

class InterestAndHobbies extends StatelessWidget {
  final List<InterestEntity> interests;

  const InterestAndHobbies({super.key, required this.interests});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: interests.map((e) => InterestChip(item: e)).toList(),
    );
  }
}
