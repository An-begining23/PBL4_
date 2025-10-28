import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_state.dart';
part 'home_page_cubit.freezed.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());
  void reload() {
    emit(HomePageState.loading());
    //TODO:call api get data
    emit(HomePageState.loaded());
  }

  void changeState() {
    state.whenOrNull(loaded: () => emit(HomePageState.loading()));
  }
}
