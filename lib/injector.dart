import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:user_pilot/data/repository/user_repository_impl.dart';
import 'package:user_pilot/domain/repository/user_repository.dart';
import 'package:user_pilot/managers/api_helper.dart';

final injector = GetIt.instance;

Future<void> init() async {
  debugPrint("initializing injector");
  injector.registerLazySingleton<ApiHelper>(() => ApiHelper());

  injector.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(injector()));
}
