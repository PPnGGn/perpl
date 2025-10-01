// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) =>
    _ResponseModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      created: (json['created'] as num?)?.toInt(),
      provider: json['provider'] as String?,
      model: json['model'] as String? ?? 'sonar',
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseModelToJson(_ResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'provider': instance.provider,
      'model': instance.model,
      'choices': instance.choices,
    };

_ChoicesModel _$ChoicesModelFromJson(Map<String, dynamic> json) =>
    _ChoicesModel(
      index: (json['index'] as num).toInt(),
      message: MessageModel.fromJson(json['message'] as Map<String, dynamic>),
      logprobs: json['logprobs'] as String?,
      finishReason: json['finishReason'] as String?,
    );

Map<String, dynamic> _$ChoicesModelToJson(_ChoicesModel instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'logprobs': instance.logprobs,
      'finishReason': instance.finishReason,
    };

_MessageModel _$MessageModelFromJson(Map<String, dynamic> json) =>
    _MessageModel(
      role: json['role'] as String? ?? 'assistant',
      content: json['content'] as String,
    );

Map<String, dynamic> _$MessageModelToJson(_MessageModel instance) =>
    <String, dynamic>{'role': instance.role, 'content': instance.content};
