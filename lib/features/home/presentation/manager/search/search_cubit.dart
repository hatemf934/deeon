import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());
  List<CustomerModel> customerModel = [];
  void showSearch() => emit(SearchShow());

  void cancelSearch() => emit(SearchInitial());

  void searchCustomer(String value) {
    if (value.isEmpty) {
      emit(SearchCustomer(customerModel: customerModel));
      return;
    }
    final result = customerModel.where((customer) {
      return customer.nameCustomer.toLowerCase().contains(value.toLowerCase());
    }).toList();
    if (result.isEmpty) {
      emit(SearchNoResult());
    } else {
      emit(SearchCustomer(customerModel: result));
    }
  }
}
