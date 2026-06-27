import 'package:ftfl_task/features/home/domain/entities/user_data_entity.dart';
import 'package:ftfl_task/features/home/domain/repositories/home_repo.dart';

class GetUserDataUsecase {
  final HomeRepository repository;

  GetUserDataUsecase(this.repository);

  Future<List<UserDataEntity>> call() {
    return repository.getProfiles();
  }
}
