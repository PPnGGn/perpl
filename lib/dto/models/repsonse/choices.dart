part of 'response_models.dart';


@freezed
abstract class ChoicesModel with _$ChoicesModel {
  const ChoicesModel._();

  const factory ChoicesModel({
    required int index,
    required MessageModel message,
    String? logprobs,
    String? finishReason,
  }) = _ChoicesModel;

  factory ChoicesModel.fromJson(Map<String, dynamic> json) =>
      _$ChoicesModelFromJson(json);

  ChoicesEntity toEntity() {
    return ChoicesEntity(
      index: index,
      message: message.toEntity(),
      logprobs: logprobs,
      finishReason: finishReason,
    );
  }
}
