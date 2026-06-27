import 'package:ftfl_task/features/home/data/datasource/remote/home_remote_datasource.dart';
import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';
import 'package:ftfl_task/features/home/domain/repositories/home_repo.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDatasource datasource;

  HomeRepositoryImpl(this.datasource);

  @override
  Future<List<UserDataEntity>> getProfiles() {
    return datasource.getProfiles();
  }
}
