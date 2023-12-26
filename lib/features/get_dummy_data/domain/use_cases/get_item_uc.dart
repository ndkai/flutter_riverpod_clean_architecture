import 'package:either_dart/src/either.dart';
import 'package:riverpod_clean_architecture/core/usercase.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/data_sources/local_data_source.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/data_sources/remote_data_source.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/models/item.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/domain/repositories/repo.dart';

import '../../data/repositories/repo_impl.dart';

class GetItemUc extends UseCase<Item, int>{
  final Repo repo;

  GetItemUc(this.repo);


  @override
  Future<Either<String, Item>> call(int params) {
      return repo.getItem(params);
  }

}