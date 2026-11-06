// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'strollers_page_response_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StrollersPageResponseObj _$StrollersPageResponseObjFromJson(
  Map<String, dynamic> json,
) => StrollersPageResponseObj(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => StrollerObj.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  total: (json['total'] as num?)?.toInt() ?? 0,
);
