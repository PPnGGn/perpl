import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  // Base URL
  static String baseUrl = dotenv.env['BASE_URL']!;

  // Endpoints
  static const String chatCompletions = '/chat/completions';
  static const String search = '/search';

  static String apiKey = dotenv.env['API_KEY']!;

  // Models
  static const String defaultModel = 'sonar';

  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
