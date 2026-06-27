import 'package:equatable/equatable.dart';

import '../../domain/entities/user_data_entity.dart';

enum HomeStatus { initial, loading, success, failure }

class HomeState extends Equatable {
  final HomeStatus status;

  final List<UserDataEntity> userDataList;

  final int currentIndex;

  final String? errorMessage;
  final int refreshKey;
  const HomeState({
    this.status = HomeStatus.initial,
    this.userDataList = const [],
    this.currentIndex = 0,
    this.errorMessage,
    this.refreshKey = 0,
  });

  UserDataEntity? get currentProfile {
    if (userDataList.isEmpty) return null;

    if (currentIndex >= userDataList.length) {
      return userDataList.last;
    }

    return userDataList[currentIndex];
  }

  HomeState copyWith({
    HomeStatus? status,
    List<UserDataEntity>? userDataList,
    int? currentIndex,
    String? errorMessage,
    int? refreshKey,
  }) {
    return HomeState(
      status: status ?? this.status,
      userDataList: userDataList ?? this.userDataList,
      currentIndex: currentIndex ?? this.currentIndex,
      errorMessage: errorMessage ?? this.errorMessage,
      refreshKey: refreshKey ?? this.refreshKey,
    );
  }

  @override
  List<Object?> get props => [status, userDataList, currentIndex, errorMessage, refreshKey];
}
