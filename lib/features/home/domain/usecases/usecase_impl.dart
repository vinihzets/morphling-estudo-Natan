import 'package:morphling/features/home/data/repositories/repositories_impl.dart';
import 'package:morphling/features/home/domain/repositories/repositories.dart';
import 'package:morphling/features/home/domain/usecases/usecase.dart';

class UseCaseImpl implements UseCase {
  RepositoriesImpl repositories;

  UseCaseImpl(this.repositories);

  @override
  bool getStableState(bool value) {
    return repositories.getStableState(value);
  }
}
