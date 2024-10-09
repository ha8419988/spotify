import 'package:dartz/dartz.dart';
import 'package:spotify/core/config/usecase/use_case.dart';
import 'package:spotify/domain/repository/song/song_repository.dart';
import 'package:spotify/service_locator.dart';

class GetNewSongUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) {
    return sl<SongsRepository>().getNewsSongs();
  }
}
