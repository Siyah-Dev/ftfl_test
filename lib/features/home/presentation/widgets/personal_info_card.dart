import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/home/presentation/model/personal_info_card_model.dart';
import 'package:ftfl_task/features/home/presentation/widgets/personal_info_card_tile.dart';

class ProfileInfoCard extends StatelessWidget {
  final List<PersonalInfoCardModel> items;
  final Widget? bottomChild;
  const ProfileInfoCard({super.key, required this.items, this.bottomChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          ListView.separated(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (_, _) => Divider(height: 1, color: AppColors.grey.withAlpha(30)),
            itemBuilder: (_, index) {
              return PersonalInfoCardTile(item: items[index]);
            },
          ),
          ?bottomChild,
        ],
      ),
    );
  }
}
