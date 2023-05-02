import 'package:blockapi/repository/home_repo.dart';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial(isLoding: false, result: 'No Data')) {
    on<FetchEvent>((event, emit) async {
      emit(const HomeInitial(isLoding: true, result: 'NO Data'));
      final data = await HomeRepository.fetchRanderAPI();
      emit(HomeInitial(isLoding: false, result: data));
    });
  }
}
