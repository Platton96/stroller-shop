import 'package:json_annotation/json_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';
import 'package:stroller_shop/services/assistant/obj/chat_action_obj.dart';
import 'package:stroller_shop/services/assistant/obj/chat_search_obj.dart';
import 'package:stroller_shop/services/catalog/obj/stroller_obj.dart';

part 'chat_response_obj.g.dart';

@JsonSerializable(createToJson: false)
class const ChatResponseObj({
  @JsonKey(name: 'conversation_id') final String conversationId = '',
  final String text = '',
  final List<StrollerObj> strollers = const [],
  final List<ChatActionObj> actions = const [],
  final List<ChatSearchObj> searches = const [],
  final List<String> suggestions = const [],
}) implements Transformable<ChatReply> {
  factory ChatResponseObj.fromJson(Map<String, Object?> json) => _$ChatResponseObjFromJson(json);

  @override
  ChatReply transform() => ChatReply(
    conversationId: conversationId,
    text: text,
    strollers: strollers.map((stroller) => stroller.transform()).toList(),
    actions: actions.map((action) => action.transform()).toList(),
    searches: searches.map((search) => search.transform()).toList(),
    suggestions: suggestions,
  );
}
