import 'package:dio/dio.dart';
import 'package:ftfl_task/core/network/dio_client.dart';
import 'package:ftfl_task/features/home/data/datasource/remote/home_remote_datasource.dart';
import 'package:ftfl_task/features/home/data/repositories/home_repo_impl.dart';
import 'package:ftfl_task/features/home/domain/repositories/home_repo.dart';
import 'package:ftfl_task/features/home/domain/usecases/get_user_data_usecase.dart';
import 'package:ftfl_task/features/home/presentation/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  getIt.registerLazySingleton<Dio>(() => DioClient.dio);

  getIt.registerLazySingleton<HomeRemoteDatasource>(() => HomeRemoteDatasourceImpl(getIt()));

  getIt.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(getIt()));

  getIt.registerLazySingleton(() => GetUserDataUsecase(getIt()));

  getIt.registerFactory(() => HomeBloc(getUserDataUsecase: getIt()));
}
