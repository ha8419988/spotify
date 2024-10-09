import 'package:spotify/core/config/usecase/use_case.dart';
import 'package:spotify/domain/repository/song/song_repository.dart';
import '../../../service_locator.dart';

class IsFavoriteSongUseCase implements UseCase<bool, String> {
  @override
  Future<bool> call({String? params}) async {
    return await sl<SongsRepository>().isFavoriteSong(params!);
  }
}
