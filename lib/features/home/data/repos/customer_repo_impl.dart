import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/domin/repos/customer_repo.dart';

class CustomerRepoImpl extends CustomerRepo {
  final HiveServices hiveServices;

  CustomerRepoImpl({required this.hiveServices});
  @override
  Future<void> addCustomer({required CustomerModel customerModel}) async {
    await hiveServices.addData(boxName: "customer", data: customerModel);
  }

  @override
  List<CustomerModel> getAllCustomers() {
    var customers = hiveServices.getAllData<CustomerModel>(boxName: "customer");
    return customers;
  }

  @override
  Future<List<CustomerModel>> deleteCustomer({required int index}) async {
    return await hiveServices.deleteData<CustomerModel>(
      boxName: "customer",
      index: index,
    );
  }
}
