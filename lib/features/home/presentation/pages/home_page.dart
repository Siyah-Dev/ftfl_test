import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';
import 'package:ftfl_task/features/home/presentation/bloc/home_event.dart';
import 'package:ftfl_task/features/home/presentation/extensions/user_data_entity_extension.dart';
import 'package:ftfl_task/features/home/presentation/widgets/big_dream_widget.dart';
import 'package:ftfl_task/features/home/presentation/widgets/dating_goal.dart';
import 'package:ftfl_task/features/home/presentation/widgets/home_app_bar.dart';
import 'package:ftfl_task/features/home/presentation/widgets/home_quote_widget.dart';
import 'package:ftfl_task/features/home/presentation/widgets/home_section_widget.dart';
import 'package:ftfl_task/features/home/presentation/widgets/interest_and_hobbies.dart';
import 'package:ftfl_task/features/home/presentation/widgets/personal_info_card.dart';
import 'package:ftfl_task/features/home/presentation/widgets/photo_card_widget.dart';
import 'package:ftfl_task/features/home/presentation/widgets/profile_badges.dart';
import 'package:ftfl_task/features/home/presentation/widgets/video_preview_card.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Center(
                            child: ProfileBadges(
                              match: state.userDataList[state.currentIndex].match,
                              trust: state.userDataList[state.currentIndex].trust,
                              replyTime:
                                  state.userDataList[state.currentIndex].formattedReplyTime ?? '',
                              badgeColor: Colors.white,
                              labelColor: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      HomeSectionWidget(
                        title: 'ABOUT',
                        child: Text(
                          state.userDataList[state.currentIndex].about ?? '',
                          style: const TextStyle(fontWeight: FontWeight.w500),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      HomeSectionWidget(
                        title: 'THE BASICS',
                        child: ProfileInfoCard(
                          items: state.userDataList[state.currentIndex].basicInfoItems,
                        ),
                      ),
                      HomeSectionWidget(
                        child: VideoPreviewCard(
                          imageUrl: state.userDataList[state.currentIndex].image ?? '',
                          duration: '0.28',
                        ),
                      ),
                      HomeQuoteWidget(
                        title: 'The way to win me over In...',
                        profile: state.userDataList[state.currentIndex],
                        onGiftPressed: () {},
                      ),
                      HomeSectionWidget(
                        title: 'CAREER & AMBITIONS',
                        child: ProfileInfoCard(
                          items: state.userDataList[state.currentIndex].careerItems,
                          bottomChild: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                            child: BigDreamWidget(
                              content: state.userDataList[state.currentIndex].bigDream ?? '',
                            ),
                          ),
                        ),
                      ),
                      HomeSectionWidget(
                        child: PhotoCardWidget(
                          imageUrl: state.userDataList[state.currentIndex].image ?? '',
                        ),
                      ),
                      HomeQuoteWidget(
                        title: 'My simple pleasure...',
                        profile: state.userDataList[state.currentIndex],
                        onGiftPressed: () {},
                      ),
                      HomeSectionWidget(
                        title: 'INTERESTS & HOBBIES',
                        child: InterestAndHobbies(
                          interests: state.userDataList[state.currentIndex].interests,
                        ),
                      ),
                      HomeSectionWidget(
                        title: 'LIFE STYLE',
                        child: ProfileInfoCard(
                          items: state.userDataList[state.currentIndex].lifestyleItems,
                        ),
                      ),
                      DatingGoal(goal: state.userDataList[state.currentIndex].datingGoal ?? ''),
                      HomeSectionWidget(
                        child: PhotoCardWidget(
                          imageUrl: state.userDataList[state.currentIndex].image ?? '',
                        ),
                      ),HomeQuoteWidget(
                        title: "We'll got along if...",
                        profile: state.userDataList[(state.currentIndex)],
                        onGiftPressed: () {},
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
