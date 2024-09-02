// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uselessfact_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UselessfactDtoImpl _$$UselessfactDtoImplFromJson(Map<String, dynamic> json) =>
    _$UselessfactDtoImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      source: json['source'] as String,
      sourceUrl: json['source_url'] as String,
      language: json['language'] as String,
      permalink: json['permalink'] as String,
    );

Map<String, dynamic> _$$UselessfactDtoImplToJson(
        _$UselessfactDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'source': instance.source,
      'source_url': instance.sourceUrl,
      'language': instance.language,
      'permalink': instance.permalink,
    };
