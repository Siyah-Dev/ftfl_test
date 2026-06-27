import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';

class UserDataModel extends UserDataEntity {
  const UserDataModel({
    required super.id,
    required super.image,
    required super.name,
    required super.age,
    required super.city,
    required super.country,
    required super.match,
    required super.trust,
    required super.replyTime,
    required super.profession,
    required super.height,
    required super.relationship,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    final age = json["dob"]["age"];

    return UserDataModel(
      id: json["login"]["uuid"],

      image: json["picture"]["large"],

      name: "${json["name"]["first"]} ${json["name"]["last"]}",

      age: age,

      city: json["location"]["city"],

      country: json["location"]["country"],

      // Demo values until real API is available
      match: 70 + (age % 30),

      trust: 95 + (age % 5),

      replyTime: "~5 min",

      profession: _profession(age),

      height: _height(age),

      relationship: _relationship(age),
    );
  }

  static String _profession(int age) {
    final list = [
      "Software Engineer",
      "UI Designer",
      "Photographer",
      "Doctor",
      "Architect",
      "Teacher",
      "Entrepreneur",
      "Product Designer",
      "Lawyer",
      "Fitness Coach",
    ];

    return list[age % list.length];
  }

  static String _height(int age) {
    final list = [
      "5'3\"",
      "5'4\"",
      "5'5\"",
      "5'6\"",
      "5'7\"",
      "5'8\"",
      "5'9\"",
      "5'10\"",
      "5'11\"",
      "6'0\"",
    ];

    return list[age % list.length];
  }

  static String _relationship(int age) {
    return age.isEven ? "Never Married" : "Single";
  }
}
