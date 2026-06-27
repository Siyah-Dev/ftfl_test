import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ftfl_task/features/home/presentation/bloc/home_event.dart';
import 'package:ftfl_task/features/home/presentation/widgets/home_app_bar.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';
import '../widgets/card_stack.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            switch (state.status) {
              case HomeStatus.loading:
                return const Center(child: CircularProgressIndicator());

              case HomeStatus.failure:
                return Center(child: Text(state.errorMessage ?? "Something went wrong"));

              case HomeStatus.success:
                return RefreshIndicator(
                  onRefresh: () async {
                    context.read<HomeBloc>().add(const HomeRefreshed());
                  },
                  child: CustomScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [
                      const SliverToBoxAdapter(child: HomeAppBar()),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * .72,
                          child: CardStack(
                            key: ValueKey(state.refreshKey),
                            profiles: state.userDataList,
                            bloc: context.read<HomeBloc>(),
                          ),
                        ),
                      ),
                    ],
                  ),
                );

              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
