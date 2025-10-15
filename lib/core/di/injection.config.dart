// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasources/chat_remote_datasource.dart' as _i494;
import '../../data/repositories/chat_repository_impl.dart' as _i838;
import '../../domain/repositories/chat_repository.dart' as _i1072;
import '../../domain/usecases/send_message_stream.dart' as _i303;
import '../network/dio_client.dart' as _i667;
import 'data_source_module.dart' as _i664;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioModule = _$DioModule();
    final dataSourceModule = _$DataSourceModule();
    final useCaseModule = _$UseCaseModule();
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio());
    gh.lazySingleton<_i494.ChatRemoteDatasource>(
      () => dataSourceModule.chatRemoteDatasource(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i1072.ChatRepository>(
      () => _i838.ChatRepositoryImpl(gh<_i494.ChatRemoteDatasource>()),
    );
    gh.lazySingleton<_i303.SendMessageStream>(
      () => useCaseModule.provideSendMessage(gh<_i1072.ChatRepository>()),
    );
    return this;
  }
}

class _$DioModule extends _i667.DioModule {}

class _$DataSourceModule extends _i664.DataSourceModule {}

class _$UseCaseModule extends _i464.UseCaseModule {}
