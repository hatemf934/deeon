import 'package:bloc/bloc.dart';
import 'package:deeon/features/auth/domin/entity/user_entity.dart';
import 'package:deeon/features/auth/domin/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());

    var result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    result.fold(
      (failure) => emit(SignInFailure(errmessage: failure.message)),
      (userEntity) => emit(SignInSucsses(userEntity: userEntity)),
    );
  }
}
