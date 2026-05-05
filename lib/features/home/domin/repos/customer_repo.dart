import 'package:deeon/features/home/data/model/customer_model.dart';

abstract class CustomerRepo {
  Future<void> addCustomer({
    required CustomerModel customerModel,
    required String userId,
  });

  List<CustomerModel> getAllCustomers({required String userId});

  Future<List<CustomerModel>> deleteCustomer({
    required int index,
    required String userId,
  });
}
