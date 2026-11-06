import 'package:json_annotation/json_annotation.dart';
import 'package:stroller_shop/entities/entities.dart';

part 'chat_search_obj.g.dart';

@JsonSerializable(createToJson: false)
class const ChatSearchObj({final String summary = '', final int found = 0})
    implements Transformable<AssistantSearch> {
  factory ChatSearchObj.fromJson(Map<String, Object?> json) => _$ChatSearchObjFromJson(json);

  @override
  AssistantSearch transform() => AssistantSearch(summary: summary, found: found);
}
