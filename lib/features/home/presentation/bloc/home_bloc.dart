import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ftfl_task/features/home/domain/usecases/get_user_data_usecase.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserDataUsecase getUserDataUsecase;

  HomeBloc({required this.getUserDataUsecase}) : super(const HomeState()) {
    on<HomeStarted>(_onLoad);

    on<HomeRefreshed>(_onRefresh);

    on<CardChanged>(_onCardChanged);
  }

  Future<void> _onLoad(HomeStarted event, Emitter<HomeState> emit) async {
    emit(state.copyWith(status: HomeStatus.loading));

    try {
      final profiles = await getUserDataUsecase();

      emit(
        state.copyWith(
          status: HomeStatus.success,
          userDataList: profiles,
          currentIndex: 0,
          refreshKey: state.refreshKey + 1,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onRefresh(HomeRefreshed event, Emitter<HomeState> emit) async {
    try {
      final profiles = await getUserDataUsecase();

      emit(
        state.copyWith(
          status: HomeStatus.success,
          userDataList: profiles,
          currentIndex: 0,
          refreshKey: state.refreshKey + 1,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.failure, errorMessage: e.toString()));
    }
  }

  void _onCardChanged(CardChanged event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentIndex: event.index));
  }
}
