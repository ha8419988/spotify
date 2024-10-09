import 'package:get_it/get_it.dart';
import 'package:spotify/data/repository/song/song_repository_impl.dart';
import 'package:spotify/data/sources/song/song_firebase_service.dart';
import 'package:spotify/domain/repository/song/song_repository.dart';
import 'package:spotify/domain/usecases/auth/get_user_use_case.dart';
import 'package:spotify/domain/usecases/auth/singin_use_case.dart';
import 'package:spotify/domain/usecases/auth/singup_use_case.dart';
import 'package:spotify/data/repository/auth/auth_repo_impl.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repository/auth/auth_repository.dart';
import 'package:spotify/domain/usecases/song/add_or_remove_favorite_song_use_case.dart';
import 'package:spotify/domain/usecases/song/get_favorite_songs_use_case.dart';
import 'package:spotify/domain/usecases/song/get_new_song_use_case.dart';
import 'package:spotify/domain/usecases/song/get_play_list_user_case.dart';
import 'package:spotify/domain/usecases/song/is_favorite_song.dart';

GetIt sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepoImpl());
  sl.registerSingleton<SingupUseCase>(SingupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());
  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceImpl());
  sl.registerSingleton<SongsRepository>(SongsRepositoryImpl());
  sl.registerSingleton<GetNewSongUseCase>(GetNewSongUseCase());
  sl.registerSingleton<GetPlayListUseCase>(GetPlayListUseCase());
  sl.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
      AddOrRemoveFavoriteSongUseCase());
  sl.registerSingleton<IsFavoriteSongUseCase>(IsFavoriteSongUseCase());
  sl.registerSingleton<GetFavoriteSongsUseCase>(GetFavoriteSongsUseCase());
}
