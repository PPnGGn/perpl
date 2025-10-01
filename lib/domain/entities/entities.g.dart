// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageEntity _$MessageEntityFromJson(Map<String, dynamic> json) =>
    _MessageEntity(
      role: json['role'] as String? ?? 'assistant',
      content: json['content'] as String,
    );

Map<String, dynamic> _$MessageEntityToJson(_MessageEntity instance) =>
    <String, dynamic>{'role': instance.role, 'content': instance.content};

_ChoicesEntity _$ChoicesEntityFromJson(Map<String, dynamic> json) =>
    _ChoicesEntity(
      index: (json['index'] as num).toInt(),
      message: MessageEntity.fromJson(json['message'] as Map<String, dynamic>),
      logprobs: json['logprobs'] as String?,
      finishReason: json['finishReason'] as String?,
    );

Map<String, dynamic> _$ChoicesEntityToJson(_ChoicesEntity instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'logprobs': instance.logprobs,
      'finishReason': instance.finishReason,
    };

_ResponseEntity _$ResponseEntityFromJson(Map<String, dynamic> json) =>
    _ResponseEntity(
      id: json['id'] as String?,
      object: json['object'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      provider: json['provider'] as String?,
      model: json['model'] as String? ?? 'sonar',
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoicesEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseEntityToJson(_ResponseEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created?.toIso8601String(),
      'provider': instance.provider,
      'model': instance.model,
      'choices': instance.choices,
    };
