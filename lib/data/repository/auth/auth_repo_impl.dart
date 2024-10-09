import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/data/models/auth/signin_user_req.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth_repository.dart';
import 'package:spotify/service_locator.dart';

class AuthRepoImpl extends AuthRepository {
  @override
  Future<Either> signIn(SigninUserReq? signinUserReq) async {
    return await sl<AuthFirebaseService>().signIn(signinUserReq!);
  }

  @override
  Future<Either> signUp(CreateUserReq? createUserReq) async {
    return await sl<AuthFirebaseService>().signUp(createUserReq!);
  }

  @override
  Future<Either> getUser() async {
    return await sl<AuthFirebaseService>().getUser();
  }
}
