import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ftfl_task/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:ftfl_task/features/dashboard/presentation/widgets/app_bottom_nav_bar.dart';
import '../../../home/presentation/pages/home_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => DashboardBloc(), child: const _DashboardView());
  }
}

class _DashboardView extends StatelessWidget {
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final pages = [
          const HomePage(),
          const Center(child: Text('Date Now')),
          const Center(child: Text('Admirers')),
          const Center(child: Text('Chat')),
          const Center(child: Text('Events')),
        ];

        return Scaffold(
          body: IndexedStack(index: state.selectedIndex, children: pages),
          bottomNavigationBar: const AppBottomNavBar(),
        );
      },
    );
  }
}
