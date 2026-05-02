import 'package:bloc/bloc.dart';
import 'package:deeon/features/auth/domin/entity/user_entity.dart';
import 'package:deeon/features/auth/domin/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String fullName,
  }) async {
    emit(SignupLoading());
    var result = await authRepo.signUpWithEmailAndPassword(
      email: email,
      password: password,
      fullName: fullName,
    );

    result.fold(
      (failure) => emit(SignupFailure(errmessage: failure.message)),
      (userEntity) => emit(SignupSucsses(userEntity: userEntity)),
    );
  }
}
