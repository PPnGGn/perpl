import 'package:injectable/injectable.dart';
import 'package:perpl/data/datasources/chat_remote_datasource.dart';
import 'package:perpl/domain/entities/entities.dart';
import 'package:perpl/domain/repositories/chat_repository.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDatasource remote;

  ChatRepositoryImpl(this.remote);

  @override
  Stream<String> sendMessageStream(List<MessageEntity> messageHistory) {
    return remote.sendMessageStream(messageHistory);
  }
}
