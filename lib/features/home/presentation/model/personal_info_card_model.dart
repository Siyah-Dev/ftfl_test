import 'package:flutter/material.dart';

class PersonalInfoCardModel {
  final IconData icon;
  final String title;
  final String value;
  final String? subtitle;

  const PersonalInfoCardModel({
    required this.icon,
    required this.title,
    required this.value,
    this.subtitle,
  });
}
