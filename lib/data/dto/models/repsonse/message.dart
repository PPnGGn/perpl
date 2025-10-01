part of 'response_models.dart';


@freezed
abstract class MessageModel with _$MessageModel {
  const MessageModel._();
  
  const factory MessageModel({
    @Default('assistant') String role,
    required String content,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  MessageEntity toEntity() {
    return MessageEntity(
      role: role,
      content: content,
    );
  }
}
