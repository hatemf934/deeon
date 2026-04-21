import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:deeon/core/error/auth_faliure.dart';
import 'package:deeon/core/services/fire_base_services.dart';
import 'package:deeon/features/auth/data/model/user_model.dart';
import 'package:deeon/features/auth/domin/entity/user_entity.dart';
import 'package:deeon/features/auth/domin/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FireBaseServices fireBaseServices = FireBaseServices();
  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required String fullName,
  }) async {
    try {
      var user = await fireBaseServices.signUpWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(user));
    } on FirebaseAuthException catch (e) {
      log("ERROR IN SIGN UP WITH EMAIL AND PASSWORD: ${e.message}");
      return Left(AuthFailure.fromFirebaseAuthException(e));
    } catch (e) {
      log("ERROR IN SIGN UP WITH EMAIL AND PASSWORD: $e");
      return Left(
        AuthFailure(message: "An unexpected error occurred. Please try again."),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }
}
