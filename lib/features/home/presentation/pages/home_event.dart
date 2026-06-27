import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class HomeStarted extends HomeEvent {
  const HomeStarted();
}

class HomeRefreshed extends HomeEvent {
  const HomeRefreshed();
}

class CardChanged extends HomeEvent {
  final int index;

  const CardChanged(this.index);

  @override
  List<Object?> get props => [index];
}
