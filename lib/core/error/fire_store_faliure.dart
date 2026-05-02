import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deeon/core/error/auth_faliure.dart';

class FirestoreFailure extends Failure {
  FirestoreFailure({required super.message});

  factory FirestoreFailure.fromFirebaseException(FirebaseException error) {
    switch (error.code) {
      case 'permission-denied':
        return FirestoreFailure(
          message: 'You do not have permission to perform this action.',
        );

      case 'not-found':
        return FirestoreFailure(
          message: 'The requested document was not found.',
        );

      case 'already-exists':
        return FirestoreFailure(message: 'This document already exists.');

      case 'unavailable':
        return FirestoreFailure(
          message: 'The service is currently unavailable. Try again later.',
        );

      case 'deadline-exceeded':
        return FirestoreFailure(
          message: 'The request took too long. Please try again.',
        );

      case 'cancelled':
        return FirestoreFailure(message: 'The operation was cancelled.');

      case 'invalid-argument':
        return FirestoreFailure(message: 'Invalid data provided.');

      default:
        return FirestoreFailure(message: 'Firestore error: ${error.message}');
    }
  }
}
