import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum StrollerSeasonObj {
  @JsonValue('all')
  all,
  @JsonValue('summer')
  summer,
  @JsonValue('winter')
  winter,
}
