import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:riverpod_clean_architecture/configs/app_configs.dart';
import 'package:riverpod_clean_architecture/services/dio_service.dart';

import '../models/item.dart';

abstract class RemoteDataSource{
  Future<Either<String,Item>> getData(int id);
}

class RemoteDataSourceImpl extends RemoteDataSource{
  final DioService dioService;

  RemoteDataSourceImpl(this.dioService);

  @override
  Future<Either<String,Item>> getData(int id) async {
    try{
      var response = await dioService.dio.get<Map<String, dynamic>>(AppConfigs.baseUrl + id.toString());
      return Right(Item.fromJson(response.data!));
    } catch(e){
      print("lololol ${e.toString()}");
      return Left(e.toString());
    }
  }

}