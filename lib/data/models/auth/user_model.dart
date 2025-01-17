import 'package:spotify/domain/entities/auth/user_entity.dart';

class UserModel {
  String? email;
  String? fullName;
  String? imageURL;

  UserModel({this.email, this.fullName, this.imageURL});

  UserModel.fromJson(Map<String, dynamic> data) {
    fullName = data['fullName'];
    email = data['email'];
  }
}

extension UserModelX on UserModel {
  UserEntity toEntity() {
    return UserEntity(email: email, fullName: fullName, imageURL: imageURL);
  }
}
