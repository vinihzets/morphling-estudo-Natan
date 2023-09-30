import 'package:morphling/features/home/data/datasources/datasources.dart';
import 'package:morphling/features/home/domain/repositories/repositories.dart';

class RepositoriesImpl implements Repositories {
  DataSources dataSources;

  RepositoriesImpl(this.dataSources);

  @override
  bool getStableState(bool value) {
    return dataSources.getStableState(value);
  }
}
