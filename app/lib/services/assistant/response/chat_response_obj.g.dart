// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatResponseObj _$ChatResponseObjFromJson(Map<String, dynamic> json) => ChatResponseObj(
  conversationId: json['conversation_id'] as String? ?? '',
  text: json['text'] as String? ?? '',
  strollers:
      (json['strollers'] as List<dynamic>?)
          ?.map((e) => StrollerObj.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  actions:
      (json['actions'] as List<dynamic>?)
          ?.map((e) => ChatActionObj.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  searches:
      (json['searches'] as List<dynamic>?)
          ?.map((e) => ChatSearchObj.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  suggestions:
      (json['suggestions'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
);
