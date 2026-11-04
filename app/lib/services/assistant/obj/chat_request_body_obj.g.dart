// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_request_body_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ChatRequestBodyObjToJson(ChatRequestBodyObj instance) => <String, dynamic>{
  'conversation_id': instance.conversationId,
  'message': instance.message,
  'cart': instance.cart.map((e) => e.toJson()).toList(),
};

Map<String, dynamic> _$ChatCartLineObjToJson(ChatCartLineObj instance) => <String, dynamic>{
  'stroller_id': instance.strollerId,
  'color': instance.color,
  'quantity': instance.quantity,
};
