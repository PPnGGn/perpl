import 'package:injectable/injectable.dart';
import 'package:perpl/data/dto/models/repsonse/response_models.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';


part 'chat_remote_datasource.g.dart';

@RestApi()
abstract class ChatRemoteDatasource {
  @factoryMethod
  factory ChatRemoteDatasource(Dio dio, {String? baseUrl}) =
      _ChatRemoteDatasource;

  // Получить список сообщений (пример, если есть такой endpoint)
  @GET('/chat/messages')
  Future<List<MessageModel>> getMessages();


  // Получить completion-ответ (переписка с ассистентом)
@POST('/chat/completions')
Future<ResponseModel> getCompletion(
  @Header('Authorization') String authHeader,
  @Body() Map<String, dynamic> request,
);

}
