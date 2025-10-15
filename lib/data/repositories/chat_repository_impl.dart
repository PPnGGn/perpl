import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:perpl/core/constants/app_constants.dart' show ApiConstants;
import 'package:perpl/core/error/failures.dart';
import 'package:perpl/data/datasources/chat_remote_datasource.dart';
import 'package:perpl/domain/entities/entities.dart';
import 'package:perpl/domain/repositories/chat_repository.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDatasource remoteDatasource;

  ChatRepositoryImpl({required this.remoteDatasource});

  @override
  Future<Either<Failure, MessageEntity>> sendMessage(List<MessageEntity> messageHistory) async {
    try {
      final requestBody = {
        "model": ApiConstants.defaultModel,
        "messages": messageHistory
            .map((msg) => {"role": msg.role, "content": msg.content})
            .toList(),
      };

      final apiKey = ApiConstants.apiKey;

      final result = await remoteDatasource.getCompletion('Bearer $apiKey', requestBody);

      return Right(result.toEntity());
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.connectionError) {
        return const Left(Failure.networkFailure(message: 'Ошибка подключения'));
      }
      return Left(Failure.serverFailure(message: e.message));
    } catch (e) {
      return Left(Failure.unknownFailure(message: e.toString()));
    }
  }
}
