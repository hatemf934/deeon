import 'package:bloc/bloc.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/data/repos/customer_repo_impl.dart';
import 'package:meta/meta.dart';

part 'customer_state.dart';

class CustomerCubit extends Cubit<CustomerState> {
  CustomerCubit() : super(CustomerInitial());
  List<CustomerModel> customers = [];
  Future<void> addCustomer(CustomerModel customer) async {
    await CustomerRepoImpl(
      hiveServices: HiveServices(),
    ).addCustomer(customerModel: customer);
    emit(CustomerAddingSuccess());
    displayCustomer();
  }

  Future<void> deleteCustomer(int index) async {
    customers = await CustomerRepoImpl(
      hiveServices: HiveServices(),
    ).deleteCustomer(index: index);
    if (customers.isEmpty) {
      emit(CustomerEmpty());
    } else {
      emit(CustomerGettingSuccess(customers: customers));
      displayCustomer();
    }
  }

  void displayCustomer() {
    customers = CustomerRepoImpl(
      hiveServices: HiveServices(),
    ).getAllCustomers();
    if (customers.isEmpty) {
      emit(CustomerEmpty());
    } else {
      emit(CustomerGettingSuccess(customers: customers));
    }
  }

  Future<void> editCustomer({
    required CustomerModel oldCustomer,
    required CustomerModel newCustomer,
  }) async {
    await oldCustomer.delete(); // HiveObjectMixin
    await CustomerRepoImpl(
      hiveServices: HiveServices(),
    ).addCustomer(customerModel: newCustomer);
    displayCustomer();
  }
}
