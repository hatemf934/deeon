import 'package:dartz/dartz.dart';
import 'package:deeon/core/error/auth_faliure.dart';
import 'package:deeon/features/auth/domin/entity/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String fullName,
  });
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
}
