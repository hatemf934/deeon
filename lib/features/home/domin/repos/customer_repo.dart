import 'package:deeon/features/home/data/model/customer_model.dart';

abstract class CustomerRepo {
  Future<void> addCustomer({required CustomerModel customerModel});

  List<CustomerModel> getAllCustomers();
}
