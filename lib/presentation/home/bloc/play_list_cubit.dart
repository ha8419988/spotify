import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:spotify/domain/usecases/song/get_play_list_user_case.dart';
import 'package:spotify/presentation/home/bloc/play_list_state.dart';
import 'package:spotify/service_locator.dart';

class PlayListsCubit extends Cubit<PlayListState> {
  PlayListsCubit() : super(PlayListLoading());

  Future<void> getPlayLists() async {
    var returnedSongs = await sl<GetPlayListUseCase>().call();

    returnedSongs.fold((l) {
      emit(PlayListLoadFail());
    }, (data) {
      emit(PlayListLoaded(songs: data));
    });
  }
}
