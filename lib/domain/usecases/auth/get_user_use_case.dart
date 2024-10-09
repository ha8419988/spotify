import 'package:dartz/dartz.dart';

import '../../../core/config/usecase/use_case.dart';
import '../../../service_locator.dart';
import '../../repository/auth/auth_repository.dart';

class GetUserUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) {
    return sl<AuthRepository>().getUser();
  }
}
