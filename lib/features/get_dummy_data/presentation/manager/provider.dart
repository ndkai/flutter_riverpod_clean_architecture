import 'package:either_dart/either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_clean_architecture/features/get_dummy_data/domain/use_cases/get_item_uc.dart';
import 'package:riverpod_clean_architecture/services/di_service.dart';

import '../../data/models/item.dart';
part 'provider.g.dart';


@riverpod
Future<Either<String, Item>> getItem(GetItemRef ref, int id) async{
  final item = await DiService.sl<GetItemUc>().call(id);
  return item;
}