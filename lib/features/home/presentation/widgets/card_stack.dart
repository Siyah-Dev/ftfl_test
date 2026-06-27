import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import 'profile_card.dart';

class CardStack extends StatelessWidget {
  final List<UserDataEntity> profiles;
  final HomeBloc bloc;

  const CardStack({super.key, required this.profiles, required this.bloc});

  @override
  Widget build(BuildContext context) {
    if (profiles.isEmpty) {
      return const SizedBox();
    }

    return CardSwiper(
      cardsCount: profiles.length,

      numberOfCardsDisplayed: 3,
      scale: 0.94,
      backCardOffset: const Offset(0, 24),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      maxAngle: 18,
      isLoop: false,

      allowedSwipeDirection: AllowedSwipeDirection.only(
        left: true,
        right: true,
        up: true,
        down: false,
      ),

      onSwipe: (previousIndex, currentIndex, direction) {
        if (previousIndex == profiles.length - 1) {
          return false;
        }
        if (currentIndex != null) {
          bloc.add(CardChanged(currentIndex));
        }

        return true;
      },

      cardBuilder: (context, index, percentThresholdX, percentThresholdY) {
        return ProfileCard(profile: profiles[index]);
      },
    );
  }
}
