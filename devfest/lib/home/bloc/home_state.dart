import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class InitialHomeState extends HomeState {
  @override
  List<Object> get props => [];
}
