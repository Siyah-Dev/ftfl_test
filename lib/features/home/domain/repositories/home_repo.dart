import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';

abstract class HomeRepository {
  Future<List<UserDataEntity>> getProfiles();
}
