import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum StrollerTerrainObj {
  @JsonValue('city')
  city,
  @JsonValue('mixed')
  mixed,
  @JsonValue('all_terrain')
  allTerrain,
}
