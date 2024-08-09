// ignore_for_file: invalid_annotation_target

import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../bootstrap.dart';
import '../../features/home/domain/models/vpn.dart';
import '../../router/router.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  AppRouter get appRouter;

  @lazySingleton
  Connectivity get connectivity;

  @preResolve
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  @lazySingleton
  Isar get isar => Isar.openSync([VpnSchema], directory: dir.path);

  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          headers: {
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );
}
