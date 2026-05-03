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
}
