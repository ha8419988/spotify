import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:spotify/domain/usecases/song/get_new_song_use_case.dart';
import 'package:spotify/presentation/home/bloc/new_song_state.dart';
import 'package:spotify/service_locator.dart';

class NewSongCubit extends Cubit<NewSongState> {
  NewSongCubit() : super(NewSongsLoading());

  Future<void> getNewSongs() async {
    var returnedSongs = await sl<GetNewSongUseCase>().call();
    returnedSongs.fold((l) {
      emit(NewSongLoadFail());
    }, (data) {
      emit(NewSongsLoaded(songs: data));
    });
  }
}
