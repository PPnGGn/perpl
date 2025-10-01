part of 'entities.dart';


@freezed
abstract class ChoicesEntity with _$ChoicesEntity {
  const factory ChoicesEntity({
    required int index,
    required MessageEntity message,
    String? logprobs,
    String? finishReason,
  }) = _ChoicesEntity;

  factory ChoicesEntity.fromJson(Map<String, dynamic> json) =>
      _$ChoicesEntityFromJson(json);
}
