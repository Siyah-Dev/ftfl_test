import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ftfl_task/features/dashboard/presentation/bloc/dashboard_bloc.dart';

import '../models/bottom_nav_item.dart';
import 'bottom_nav_item_widget.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  static const List<BottomNavItem> items = [
    BottomNavItem(label: 'Home', icon: Icons.home_outlined),
    BottomNavItem(label: 'Date Now', icon: Icons.play_circle_outline_outlined),
    BottomNavItem(label: 'Admirers', icon: Icons.favorite_border),
    BottomNavItem(label: 'Chat', icon: Icons.chat_bubble_outline),
    BottomNavItem(label: 'Events', icon: Icons.calendar_today_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return SafeArea(
          top: false,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
            ),
            child: Row(
              children: List.generate(items.length, (index) {
                final item = items[index];

                return BottomNavItemWidget(
                  icon: item.icon,
                  label: item.label,
                  isSelected: state.selectedIndex == index,
                  onTap: () {
                    context.read<DashboardBloc>().add(DashboardTabChanged(index));
                  },
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
