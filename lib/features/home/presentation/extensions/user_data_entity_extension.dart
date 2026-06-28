import 'package:flutter/material.dart';
import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';
import 'package:ftfl_task/features/home/presentation/model/personal_info_card_model.dart';

extension UserDataEntityExtension on UserDataEntity {
  List<PersonalInfoCardModel> get basicInfoItems => [
    PersonalInfoCardModel(
      icon: Icons.cake_outlined,
      title: 'Age',
      value: '$age years old',
      subtitle: dateOfBirth,
    ),
    PersonalInfoCardModel(icon: Icons.straighten, title: 'Height', value: '$height'),
    PersonalInfoCardModel(
      icon: Icons.landscape_outlined,
      title: 'Lives in',
      value: '$street',
      subtitle: '$city, $state',
    ),
    PersonalInfoCardModel(
      icon: Icons.favorite_border_outlined,
      title: 'Love Language',
      value: 'Compliment',
      subtitle: '$loveLanguage',
    ),
    PersonalInfoCardModel(
      icon: Icons.local_fire_department_outlined,
      title: 'Religion',
      value: '$religion',
    ),
    PersonalInfoCardModel(
      icon: Icons.playlist_add_check_outlined,
      title: 'Interested in',
      value: '$interestedIn',
    ),
    PersonalInfoCardModel(
      icon: Icons.wb_sunny_outlined,
      title: 'Zodiac',
      value: '$zodiac',
      subtitle: 'Loyal-Passionate-Intutive',
    ),
    PersonalInfoCardModel(
      icon: Icons.translate_outlined,
      title: 'Mother tongue',
      value: '$motherTongue',
    ),
    PersonalInfoCardModel(
      icon: Icons.phone_outlined,
      title: 'Communication Style',
      value: '$communicationStyle',
    ),
  ];

  List<PersonalInfoCardModel> get careerItems => [
    PersonalInfoCardModel(
      icon: Icons.school_outlined,
      title: 'Education',
      value: education ?? '',
      subtitle: 'B.Des Fashion Designer. 3rd Year',
    ),
    PersonalInfoCardModel(
      icon: Icons.work_outline_sharp,
      title: 'Work as',
      value: workAs ?? '',
      subtitle: 'Freelancer - 2 Year Experience',
    ),
    PersonalInfoCardModel(
      icon: Icons.star_border_outlined,
      title: 'Work style',
      value: workStyle ?? '',
    ),
    PersonalInfoCardModel(
      icon: Icons.trending_up,
      title: 'Ambition level',
      value: ambitionLevel ?? '',
    ),
  ];
  List<PersonalInfoCardModel> get lifestyleItems => [
    PersonalInfoCardModel(icon: Icons.restaurant, title: 'Diet', value: diet ?? ''),
    PersonalInfoCardModel(icon: Icons.wine_bar_outlined, title: 'Drinking', value: drinking ?? ''),
    PersonalInfoCardModel(
      icon: Icons.smoking_rooms_outlined,
      title: 'Smoking',
      value: smoking ?? '',
    ),
    PersonalInfoCardModel(
      icon: Icons.fitness_center_outlined,
      title: 'Fitness',
      value: fitness ?? '',
      subtitle: 'Yoga - Trucking',
    ),
    PersonalInfoCardModel(
      icon: Icons.person_pin_circle_outlined,
      title: 'Travel',
      value: travel ?? '',
    ),
    PersonalInfoCardModel(icon: Icons.pets_outlined, title: 'Pets', value: pets ?? ''),
    PersonalInfoCardModel(icon: Icons.nightlight_outlined, title: 'Sleep', value: sleep ?? ''),
  ];
}
