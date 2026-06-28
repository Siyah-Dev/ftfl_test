import 'package:equatable/equatable.dart';

class InterestEntity extends Equatable {
  final String title;
  final String icon;

  const InterestEntity({required this.title, required this.icon});

  @override
  List<Object?> get props => [title, icon];
}
