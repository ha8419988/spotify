import 'package:dartz/dartz.dart';
import 'package:spotify/core/config/usecase/use_case.dart';
import 'package:spotify/domain/repository/song/song_repository.dart';

import '../../../service_locator.dart';

class GetFavoriteSongsUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({params}) async {
    return await sl<SongsRepository>().getUserFavoriteSongs();
  }
}
