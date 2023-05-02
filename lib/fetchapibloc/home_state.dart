part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  final bool isLoding;
  final String? result;
  const HomeState({
    required this.isLoding,
    required this.result,
  });
}

class HomeInitial extends HomeState {
  const HomeInitial({
    required super.isLoding,
    required super.result,
  });
}
