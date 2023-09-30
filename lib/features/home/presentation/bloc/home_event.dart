import '../../../../core/bloc/event.dart';

class HomeEvent extends Event {}

class HomeLoadingStateEvent implements HomeEvent {}

class HomeStableStateEvent implements HomeEvent {}

class HomeErrorStateEvent implements HomeEvent {}

class HomeEmptyStateEvent implements HomeEvent {}

class OnReadyEvent implements HomeEvent {
  bool value;

  OnReadyEvent(this.value);
}
