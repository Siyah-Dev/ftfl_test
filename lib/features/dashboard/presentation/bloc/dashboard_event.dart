part of 'dashboard_bloc.dart';

sealed class DashboardEvent {}

class DashboardTabChanged extends DashboardEvent {
  final int index;

  DashboardTabChanged(this.index);
}
