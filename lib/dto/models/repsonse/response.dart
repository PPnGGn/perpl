part of "response_models.dart";

@freezed
abstract class ResponseModel with _$ResponseModel {
  const ResponseModel._();
  
  const factory ResponseModel({
    String? id,
    String? object,
    int? created,
    String? provider,
    @Default('sonar') String model,
    required List<ChoicesModel> choices,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);

  MessageEntity toEntity() {
    // Возвращаем первое сообщение из choices
    if (choices.isEmpty) {
      throw Exception('No choices in response');
    }
    return choices.first.message.toEntity();
  }
}
