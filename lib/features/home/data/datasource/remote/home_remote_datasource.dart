import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ftfl_task/core/constants/api_constants.dart';
import 'package:ftfl_task/features/home/data/model/user_data_model.dart';

abstract class HomeRemoteDatasource {
  Future<List<UserDataModel>> getProfiles({int count = 20});
}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  final Dio dio;

  HomeRemoteDatasourceImpl(this.dio);

  @override
  Future<List<UserDataModel>> getProfiles({int count = 20}) async {
    log("it is base url ${dio.options.baseUrl}");
    final response = await dio.get(ApiConstants.users, queryParameters: {'results': count});

    final List results = response.data["results"];

    return results.map((e) => UserDataModel.fromJson(e)).toList();
  }
}
