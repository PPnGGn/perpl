import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:perpl/data/datasources/chat_remote_datasource.dart';

@module
abstract class DataSourceModule {
  @lazySingleton
  ChatRemoteDatasource chatRemoteDatasource(Dio dio) => ChatRemoteDatasource(dio);
}
