abstract class LocalDatabaseServices {
  Future<void> addData<T>({required String boxName, required T data});

  List<T> getAllData<T>({required String boxName});

  // Future<void> deleteData({required String boxName});
}
