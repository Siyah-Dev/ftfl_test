import 'package:equatable/equatable.dart';

class UserDataEntity extends Equatable {
  final String id;
  final String image;
  final String name;
  final int age;
  final String city;
  final String country;

  final num match;
  final num trust;

  final String replyTime;

  final String profession;

  final String height;

  final String relationship;

  const UserDataEntity({
    required this.id,
    required this.image,
    required this.name,
    required this.age,
    required this.city,
    required this.country,
    required this.match,
    required this.trust,
    required this.replyTime,
    required this.profession,
    required this.height,
    required this.relationship,
  });

  @override
  List<Object?> get props => [
    id,
    image,
    name,
    age,
    city,
    country,
    match,
    trust,
    replyTime,
    profession,
    height,
    relationship,
  ];
}
