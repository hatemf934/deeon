import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/presentation/manager/customer_cubit/customer_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.customerCubit) : super(SearchInitial());
  final CustomerCubit customerCubit;
  void showSearch() => emit(SearchShow());

  void cancelSearch() => emit(SearchInitial());

  void searchCustomer(String value) {
    if (value.isEmpty) {
      emit(SearchCustomer(customerModel: customerCubit.customers));
      return;
    }
    final result = customerCubit.customers.where((customer) {
      return customer.nameCustomer.toLowerCase().contains(value.toLowerCase());
    }).toList();
    if (result.isEmpty) {
      emit(SearchNoResult());
    } else {
      emit(SearchCustomer(customerModel: result));
    }
  }
}
