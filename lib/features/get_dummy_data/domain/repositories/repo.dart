import 'package:either_dart/either.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/data/models/item.dart';

abstract class Repo{
  Future<Either<String, Item>> getItem(int id);
  void saveItem(Item item);
  Item getLocalItem(int id);
}