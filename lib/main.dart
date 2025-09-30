import 'package:flutter/material.dart';
import 'package:perpl/core/router/app_router.dart';
import 'package:perplexity_dart/perplexity_dart.dart';

void main() async {
  final client = PerplexityClient(apiKey: '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');
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
