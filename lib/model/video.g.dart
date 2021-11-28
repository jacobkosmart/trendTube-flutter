// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      kind: json['kind'] as String?,
      etag: json['etag'] as String?,
      id: json['id'] as String?,
      snippet: json['snippet'] == null
          ? null
          : Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet,
    };

_$_Snippet _$$_SnippetFromJson(Map<String, dynamic> json) => _$_Snippet(
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
      channelId: json['channelId'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      thumbnails: json['thumbnails'] == null
          ? null
          : Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      channelTitle: json['channelTitle'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      categoryId: json['categoryId'] as String?,
      liveBroadcastContent: json['liveBroadcastContent'] as String?,
      localized: json['localized'] == null
          ? null
          : Localized.fromJson(json['localized'] as Map<String, dynamic>),
      defaultAudioLanguage: json['defaultAudioLanguage'] as String?,
    );

Map<String, dynamic> _$$_SnippetToJson(_$_Snippet instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt?.toIso8601String(),
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'thumbnails': instance.thumbnails,
      'channelTitle': instance.channelTitle,
      'tags': instance.tags,
      'categoryId': instance.categoryId,
      'liveBroadcastContent': instance.liveBroadcastContent,
      'localized': instance.localized,
      'defaultAudioLanguage': instance.defaultAudioLanguage,
    };

_$_Localized _$$_LocalizedFromJson(Map<String, dynamic> json) => _$_Localized(
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_LocalizedToJson(_$_Localized instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_$_Thumbnails _$$_ThumbnailsFromJson(Map<String, dynamic> json) =>
    _$_Thumbnails(
      thumbnailsDefault: json['thumbnailsDefault'] == null
          ? null
          : Default.fromJson(json['thumbnailsDefault'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : Default.fromJson(json['medium'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : Default.fromJson(json['high'] as Map<String, dynamic>),
      standard: json['standard'] == null
          ? null
          : Default.fromJson(json['standard'] as Map<String, dynamic>),
      maxres: json['maxres'] == null
          ? null
          : Default.fromJson(json['maxres'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ThumbnailsToJson(_$_Thumbnails instance) =>
    <String, dynamic>{
      'thumbnailsDefault': instance.thumbnailsDefault,
      'medium': instance.medium,
      'high': instance.high,
      'standard': instance.standard,
      'maxres': instance.maxres,
    };

_$_Default _$$_DefaultFromJson(Map<String, dynamic> json) => _$_Default(
      url: json['url'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );

Map<String, dynamic> _$$_DefaultToJson(_$_Default instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
