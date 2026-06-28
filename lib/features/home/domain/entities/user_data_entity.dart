import 'package:equatable/equatable.dart';
import 'package:ftfl_task/features/home/domain/entities/interest_entity.dart';

class UserDataEntity extends Equatable {
  final String? id;
  final String? image;
  final String? name;
  final int? age;
  final String? street;
  final String? city;
  final String? state;
  final String? country;

  final num match;
  final num trust;

  final String? replyTime;

  final String? profession;

  final String? height;

  final String? relationship;
  final String? about;
  final List<InterestEntity> interests;
  // Basic Info---mock data
  final String? dateOfBirth;
  final String? loveLanguage;
  final String? religion;
  final String? interestedIn;
  final String? zodiac;
  final String? motherTongue;
  final String? communicationStyle;

  // Lifestyle---mock data
  final String? diet;
  final String? drinking;
  final String? smoking;
  final String? fitness;
  final String? travel;
  final String? pets;
  final String? sleep;
  final String? quote;
  // Career---mock data
  final String? education;
  final String? educationSubtitle;

  final String? workAs;
  final String? workAsSubtitle;

  final String? workStyle;

  final String? ambitionLevel;
  final String? bigDream;
  final String? datingGoal;
  const UserDataEntity({
    required this.id,
    required this.image,
    required this.name,
    required this.age,
    required this.street,
    required this.city,
    required this.state,
    required this.country,
    required this.match,
    required this.trust,
    required this.replyTime,
    required this.profession,
    required this.height,
    required this.relationship,
    required this.about,
    required this.interests,

    required this.dateOfBirth,
    required this.loveLanguage,
    required this.religion,
    required this.interestedIn,
    required this.zodiac,
    required this.motherTongue,
    required this.communicationStyle,
    required this.diet,
    required this.drinking,
    required this.smoking,
    required this.fitness,
    required this.travel,
    required this.pets,
    required this.sleep,
    required this.quote,
    required this.education,
    required this.educationSubtitle,
    required this.workAs,
    required this.workAsSubtitle,
    required this.workStyle,
    required this.ambitionLevel,
    required this.bigDream,
    required this.datingGoal,
  });

  String? get formattedReplyTime {
    return '${replyTime?.replaceAll(' minutes', 'm').replaceAll(' minute', 'm').replaceAll(' mins', 'm').replaceAll(' min', 'm').replaceAll(' hours', 'h').replaceAll(' hour', 'h')} Reply';
  }

  @override
  List<Object?> get props => [
    id,
    image,
    name,
    age,
    street,
    city,
    state,
    country,
    match,
    trust,
    replyTime,
    profession,
    height,
    relationship,
    about,
    interests,

    dateOfBirth,
    loveLanguage,
    religion,
    interestedIn,
    zodiac,
    motherTongue,
    communicationStyle,

    // Lifestyle
    diet,
    drinking,
    smoking,
    fitness,
    travel,
    pets,
    sleep,
    quote,
    education,
    educationSubtitle,
    workAs,
    workAsSubtitle,
    workStyle,
    ambitionLevel,
    bigDream,
    datingGoal,
  ];
}
