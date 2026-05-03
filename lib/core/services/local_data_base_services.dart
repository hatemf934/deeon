abstract class LocalDatabaseServices {
  Future<void> addData<T>({required String boxName, required T data});

  List<T> getAllData<T>({required String boxName});

  Future<List<T>> deleteData<T>({required String boxName, required int index});
}
