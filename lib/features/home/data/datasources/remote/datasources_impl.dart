import 'package:morphling/features/home/data/datasources/datasources.dart';

class DataSourcesImpl implements DataSources {
  @override
  bool getStableState(bool value) {
    return value;
  }
}
