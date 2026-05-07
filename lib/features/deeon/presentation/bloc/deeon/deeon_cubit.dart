import 'package:bloc/bloc.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/data/repos/deeon_repo_impl.dart';
import 'package:meta/meta.dart';

part 'deeon_state.dart';

class DeeonCubit extends Cubit<DeeonState> {
  DeeonCubit() : super(DeeonInitial());
  List<DeeonModel> deeonModel = [];
  String customerId = "";
  Future<void> addDeeonDate({required DeeonModel deeonModel}) async {
    await DeeonRepoImpl(
      hiveServices: HiveServices(),
    ).addDeeons(customerId: customerId, deeonModel: deeonModel);
    displayDeeonDate();
  }

  void displayDeeonDate() {
    deeonModel = DeeonRepoImpl(
      hiveServices: HiveServices(),
    ).getAllDeeons(customerId: customerId);
    if (deeonModel.isEmpty) {
      emit(DeeonInitial());
    } else {
      emit(DeeonGettingSuccess(deeon: deeonModel));
    }
  }
}
