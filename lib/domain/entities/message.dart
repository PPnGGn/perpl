part of 'entities.dart';

@freezed
abstract class MessageEntity with _$MessageEntity {
  const factory MessageEntity({
    @Default('assistant') String role,
    required String content,
  }) = _MessageEntity;

  factory MessageEntity.fromJson(Map<String, dynamic> json) =>
      _$MessageEntityFromJson(json);
}
