// To parse this JSON data, do
//
//     final video = videoFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'video.freezed.dart';
part 'video.g.dart';

Video videoFromJson(String str) => Video.fromJson(json.decode(str));

String videoToJson(Video data) => json.encode(data.toJson());

@freezed
class Video with _$Video {
  const factory Video({
    String? kind,
    String? etag,
    String? id,
    Snippet? snippet,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        kind: json["kind"],
        etag: json["etag"],
        id: json["id"],
        snippet: Snippet.fromJson(json["snippet"]),
      );
}

@freezed
class Snippet with _$Snippet {
  const factory Snippet({
    DateTime? publishedAt,
    String? channelId,
    String? title,
    String? description,
    Thumbnails? thumbnails,
    String? channelTitle,
    List<String>? tags,
    String? categoryId,
    String? liveBroadcastContent,
    Localized? localized,
    String? defaultAudioLanguage,
  }) = _Snippet;

  factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);
}

@freezed
class Localized with _$Localized {
  const factory Localized({
    String? title,
    String? description,
  }) = _Localized;

  factory Localized.fromJson(Map<String, dynamic> json) =>
      _$LocalizedFromJson(json);
}

@freezed
class Thumbnails with _$Thumbnails {
  const factory Thumbnails({
    Default? thumbnailsDefault,
    Default? medium,
    Default? high,
    Default? standard,
    Default? maxres,
  }) = _Thumbnails;

  factory Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsFromJson(json);
}

@freezed
class Default with _$Default {
  const factory Default({
    String? url,
    int? width,
    int? height,
  }) = _Default;

  factory Default.fromJson(Map<String, dynamic> json) =>
      _$DefaultFromJson(json);
}
