import 'package:either_dart/src/either.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/data_sources/local_data_source.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/data_sources/remote_data_source.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/models/item.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/domain/repositories/repo.dart';

class RepoImpl extends Repo{
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;

  RepoImpl({required this.localDataSource, required this.remoteDataSource});

  @override
  Future<Either<String, Item>> getItem(int id) {
    return remoteDataSource.getData(id);
  }

  @override
  Item getLocalItem(int id) {
    return localDataSource.get(id);
  }

  @override
  bool saveItem(Item item) {
    localDataSource.save(item);
    return true;
  }

}