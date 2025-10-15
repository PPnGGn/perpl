import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:perpl/presentation/chat/cubit/chat_cubit.dart';
import 'core/di/injection.dart';
import 'core/router/app_router.dart';
import 'domain/usecases/send_message_stream.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();


  // Инициализация Dependency Injection
  await configureDependencies();
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    final sendMessageStreamUseCase = getIt<SendMessageStream>();
    return BlocProvider(
      create: (context) => ChatCubit(sendMessageStreamUseCase: sendMessageStreamUseCase),
      child: MaterialApp.router(
        title: 'Perplexity Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF20808D),
            brightness: Brightness.light,
          ),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF20808D),
            brightness: Brightness.dark,
          ),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        ),
        themeMode: ThemeMode.dark,
        routerConfig: _router.config(),
      ),
    );
  }
}
