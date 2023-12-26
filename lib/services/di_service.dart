import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/data_sources/local_data_source.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/data_sources/remote_data_source.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/repositories/repo_impl.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/domain/repositories/repo.dart';
import 'package:riverpod_clean_architecture/services/dio_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/get_dummy_data/domain/use_cases/get_item_uc.dart';

class DiService{
  static final sl = GetIt.instance;
  
  Future<void> init() async{
    sl.registerLazySingleton(() => GetItemUc(sl()));
    sl.registerLazySingleton<Repo>(() => RepoImpl(localDataSource: sl(), remoteDataSource: sl()));
    sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl(sl()));
    sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(sl()));
    final sharedPreferences = await SharedPreferences.getInstance();
    sl.registerLazySingleton(() => sharedPreferences);
    sl.registerLazySingleton(() => DioService(sl()));
    sl.registerLazySingleton(() => Dio());
  }
}