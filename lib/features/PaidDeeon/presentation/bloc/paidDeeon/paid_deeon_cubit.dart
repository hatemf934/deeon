import 'package:bloc/bloc.dart';
import 'package:deeon/constant.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/PaidDeeon/data/repos/paid_deeon_repo_impl.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'paid_deeon_state.dart';

class PaidDeeonCubit extends Cubit<PaidDeeonState> {
  PaidDeeonCubit() : super(PaidDeeonInitial());
  String customerId = "";
  Future<void> payDeeon({required DeeonModel deeon}) async {
    if (!Hive.isBoxOpen("$paidDeeonBox$customerId")) {
      await Hive.openBox<DeeonModel>("$paidDeeonBox$customerId");
    }
    await PaidDeeonRepoImpl(
      hiveServices: HiveServices(),
    ).addPaidDeeon(deeonModel: deeon.copyWith(), customerId: customerId);
    displayPaidDeeons();
  }

  void displayPaidDeeons() {
    final paid = PaidDeeonRepoImpl(
      hiveServices: HiveServices(),
    ).getAllPaidDeeons(customerId: customerId);
    emit(DeeonPaidSuccess(deeon: paid));
  }
}
