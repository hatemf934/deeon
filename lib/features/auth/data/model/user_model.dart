import 'package:deeon/features/auth/domin/entity/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  UserModel({required super.id, required super.email, required super.name});
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      id: user.uid,
      email: user.email ?? "",
      name: user.displayName ?? "",
    );
  }
  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(id: entity.id, email: entity.email, name: entity.name);
  }

  Map<String, dynamic> toMap() {
    return {"id": id, "email": email, "name": name};
  }
}
