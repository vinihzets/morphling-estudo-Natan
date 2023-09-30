import 'package:get_it/get_it.dart';
import 'package:morphling/features/home/data/datasources/datasources.dart';
import 'package:morphling/features/home/data/datasources/remote/datasources_impl.dart';
import 'package:morphling/features/home/data/repositories/repositories_impl.dart';
import 'package:morphling/features/home/domain/repositories/repositories.dart';
import 'package:morphling/features/home/domain/usecases/usecase.dart';
import 'package:morphling/features/home/domain/usecases/usecase_impl.dart';

import '../../features/home/presentation/bloc/home_bloc.dart';

class Injector {
  static build() {
    GetIt getIt = GetIt.instance;

    // CORE

    // Datasources

    // getIt.registerLazySingleton<DataSources>(() => DataSourcesImpl());

    // repositories

    // getIt.registerLazySingleton<Repositories>(() => RepositoriesImpl(getIt()));

    //usecases

    // getIt.registerLazySingleton<UseCase>(() => UseCaseImpl(getIt()));

    // BLOC

    // getIt.registerFactory(() => HomeBloc(getIt()));
  }
}
