class ApiConstants {
  // Base URL
  static const String baseUrl = 'https://api.perplexity.ai';

  // Endpoints
  static const String chatCompletions = '/chat/completions';
  static const String search = '/search';

  // API Keys (переместите в .env файл для продакшена)
  static const String apiKey = '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';

  // Models
  static const String defaultModel = 'sonar';


  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
