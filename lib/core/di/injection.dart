import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:perpl/domain/repositories/chat_repository.dart';
import 'package:perpl/domain/usecases/send_message.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async => getIt.init();

@module
abstract class UseCaseModule {
  @lazySingleton
  SendMessage provideSendMessage(ChatRepository repository) => SendMessage(repository);


}
