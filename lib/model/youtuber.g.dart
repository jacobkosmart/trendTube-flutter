// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtuber.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Youtuber _$$_YoutuberFromJson(Map<String, dynamic> json) => _$_Youtuber(
      snippet: json['snippet'] == null
          ? null
          : Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
      statistics: json['statistics'] == null
          ? null
          : Statistics.fromJson(json['statistics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_YoutuberToJson(_$_Youtuber instance) =>
    <String, dynamic>{
      'snippet': instance.snippet,
      'statistics': instance.statistics,
    };
