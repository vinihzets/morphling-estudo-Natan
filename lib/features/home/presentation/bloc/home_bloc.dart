import 'dart:developer';

import 'package:morphling/core/bloc/bloc_state.dart';
import 'package:morphling/core/bloc/event.dart';
import 'package:morphling/features/home/data/datasources/remote/datasources_impl.dart';
import 'package:morphling/features/home/data/repositories/repositories_impl.dart';
import 'package:morphling/features/home/domain/usecases/usecase.dart';
import 'package:morphling/features/home/domain/usecases/usecase_impl.dart';

import '../../../../core/bloc/bloc.dart';
import 'home_event.dart';

class HomeBloc extends Bloc {
  UseCaseImpl useCase = UseCaseImpl(RepositoriesImpl(DataSourcesImpl()));

  @override
  mapListenEvent(Event event) {
    if (event is OnReadyEvent) {
      _handleSetStableState(event.value);
    }
  }

  _handleSetStableState(bool value) {
    final result = useCase.getStableState(value);

    if (result == true) {
      dispatchState(BlocStableState(data: []));
    } else if (result == false) {
      dispatchState(BlocEmptyState(data: []));
    }
  }
}
