import 'package:injectable/injectable.dart';
import 'package:perpl/data/models/repsonse/response_models.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';


part 'chat_remote_datasource.g.dart';

@RestApi()
abstract class ChatRemoteDatasource {
  @factoryMethod
  factory ChatRemoteDatasource(Dio dio, {String baseUrl}) =
      _ChatRemoteDatasource;


@POST('/chat/completions')
Future<ResponseModel> getCompletion(
  @Header('Authorization') String authHeader,
  @Body() Map<String, dynamic> request,
);

}
