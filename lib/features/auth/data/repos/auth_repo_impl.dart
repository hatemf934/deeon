import 'package:dartz/dartz.dart';
import 'package:deeon/core/error/auth_faliure.dart';
import 'package:deeon/features/auth/domin/entity/user_entity.dart';
import 'package:deeon/features/auth/domin/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String identifier,
    required String password,
  }) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String fullName,
  }) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }
}
