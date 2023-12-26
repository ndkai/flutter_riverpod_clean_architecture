import 'package:shared_preferences/shared_preferences.dart';

import '../models/item.dart';

abstract class LocalDataSource{
  final String key;
  LocalDataSource(this.key);
  void save(Item data);
  Item get(int id);
}

class LocalDataSourceImpl extends LocalDataSource{
  final SharedPreferences preferences;
  LocalDataSourceImpl(this.preferences) : super('');


  @override
  void save(Item data) async {
    print("LocalDataSourceImpl save: ${key}");
    preferences.setString(key, data.toJson().toString());
  }

  @override
  Item get(int id) {
    return Item.fromJson(preferences.get(key) as Map<String, dynamic>);
  }
}