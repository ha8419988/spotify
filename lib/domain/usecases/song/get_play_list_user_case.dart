import 'package:dartz/dartz.dart';
import 'package:spotify/core/config/usecase/use_case.dart';
import 'package:spotify/service_locator.dart';

import '../../repository/song/song_repository.dart';

class GetPlayListUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) {
    return sl<SongsRepository>().getPlayLists();
  }
}
