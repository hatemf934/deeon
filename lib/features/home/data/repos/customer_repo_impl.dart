import 'package:deeon/constant.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/domin/repos/customer_repo.dart';

class CustomerRepoImpl extends CustomerRepo {
  final HiveServices hiveServices;

  CustomerRepoImpl({required this.hiveServices});
  @override
  Future<void> addCustomer({
    required CustomerModel customerModel,
    required String userId,
  }) async {
    await hiveServices.addData(
      boxName: "$customerBox$userId",
      data: customerModel,
    );
  }

  @override
  List<CustomerModel> getAllCustomers({required String userId}) {
    var customers = hiveServices.getAllData<CustomerModel>(
      boxName: "$customerBox$userId",
    );
    return customers;
  }

  @override
  Future<List<CustomerModel>> deleteCustomer({
    required int index,
    required String userId,
  }) async {
    return await hiveServices.deleteData<CustomerModel>(
      boxName: "$customerBox$userId",
      index: index,
    );
  }
}
