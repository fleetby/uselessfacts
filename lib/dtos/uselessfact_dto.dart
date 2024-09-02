// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'uselessfact_dto.freezed.dart';
part 'uselessfact_dto.g.dart';

@freezed
class UselessfactDto with _$UselessfactDto {
  const factory UselessfactDto({
    required String id,
    required String text,
    required String source,
    @JsonKey(name: 'source_url') required String sourceUrl,
    required String language,
    required String permalink,
  }) = _UselessfactDto;

  factory UselessfactDto.fromJson(Map<String, dynamic> json) =>
      _$UselessfactDtoFromJson(json);
}
