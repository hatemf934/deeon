import 'package:deeon/core/services/local_data_base_services.dart';
import 'package:hive/hive.dart';

class HiveServices extends LocalDatabaseServices {
  @override
  Future<void> addData<T>({required String boxName, required T data}) async {
    var box = Hive.box<T>(boxName);
    await box.add(data);
  }

  @override
  List<T> getAllData<T>({required String boxName}) {
    final getData = Hive.box<T>(boxName);
    return getData.values.toList();
  }

  @override
  Future<List<T>> deleteData<T>({
    required String boxName,
    required int index,
  }) async {
    var box = Hive.box<T>(boxName);
    await box.deleteAt(index);
    return box.values.toList();
  }

  @override
  T deleteSingleData<T>({required String boxName}) {
    var box = Hive.box<T>(boxName);
    return box.delete("single_data") as T;
  }

  @override
  T getSingleData<T>({required String boxName}) {
    final box = Hive.box<T>(boxName);
    return box.get('single_data')!;
  }

  @override
  Future<void> addSingleData<T>({
    required String boxName,
    required T data,
  }) async {
    var box = Hive.box<T>(boxName);
    await box.put('single_data', data);
  }
}
