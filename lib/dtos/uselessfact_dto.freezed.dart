// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uselessfact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UselessfactDto _$UselessfactDtoFromJson(Map<String, dynamic> json) {
  return _UselessfactDto.fromJson(json);
}

/// @nodoc
mixin _$UselessfactDto {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_url')
  String get sourceUrl => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get permalink => throw _privateConstructorUsedError;

  /// Serializes this UselessfactDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UselessfactDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UselessfactDtoCopyWith<UselessfactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UselessfactDtoCopyWith<$Res> {
  factory $UselessfactDtoCopyWith(
          UselessfactDto value, $Res Function(UselessfactDto) then) =
      _$UselessfactDtoCopyWithImpl<$Res, UselessfactDto>;
  @useResult
  $Res call(
      {String id,
      String text,
      String source,
      @JsonKey(name: 'source_url') String sourceUrl,
      String language,
      String permalink});
}

/// @nodoc
class _$UselessfactDtoCopyWithImpl<$Res, $Val extends UselessfactDto>
    implements $UselessfactDtoCopyWith<$Res> {
  _$UselessfactDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UselessfactDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? source = null,
    Object? sourceUrl = null,
    Object? language = null,
    Object? permalink = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UselessfactDtoImplCopyWith<$Res>
    implements $UselessfactDtoCopyWith<$Res> {
  factory _$$UselessfactDtoImplCopyWith(_$UselessfactDtoImpl value,
          $Res Function(_$UselessfactDtoImpl) then) =
      __$$UselessfactDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String source,
      @JsonKey(name: 'source_url') String sourceUrl,
      String language,
      String permalink});
}

/// @nodoc
class __$$UselessfactDtoImplCopyWithImpl<$Res>
    extends _$UselessfactDtoCopyWithImpl<$Res, _$UselessfactDtoImpl>
    implements _$$UselessfactDtoImplCopyWith<$Res> {
  __$$UselessfactDtoImplCopyWithImpl(
      _$UselessfactDtoImpl _value, $Res Function(_$UselessfactDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UselessfactDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? source = null,
    Object? sourceUrl = null,
    Object? language = null,
    Object? permalink = null,
  }) {
    return _then(_$UselessfactDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UselessfactDtoImpl implements _UselessfactDto {
  const _$UselessfactDtoImpl(
      {required this.id,
      required this.text,
      required this.source,
      @JsonKey(name: 'source_url') required this.sourceUrl,
      required this.language,
      required this.permalink});

  factory _$UselessfactDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UselessfactDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String source;
  @override
  @JsonKey(name: 'source_url')
  final String sourceUrl;
  @override
  final String language;
  @override
  final String permalink;

  @override
  String toString() {
    return 'UselessfactDto(id: $id, text: $text, source: $source, sourceUrl: $sourceUrl, language: $language, permalink: $permalink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UselessfactDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, text, source, sourceUrl, language, permalink);

  /// Create a copy of UselessfactDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UselessfactDtoImplCopyWith<_$UselessfactDtoImpl> get copyWith =>
      __$$UselessfactDtoImplCopyWithImpl<_$UselessfactDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UselessfactDtoImplToJson(
      this,
    );
  }
}

abstract class _UselessfactDto implements UselessfactDto {
  const factory _UselessfactDto(
      {required final String id,
      required final String text,
      required final String source,
      @JsonKey(name: 'source_url') required final String sourceUrl,
      required final String language,
      required final String permalink}) = _$UselessfactDtoImpl;

  factory _UselessfactDto.fromJson(Map<String, dynamic> json) =
      _$UselessfactDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get source;
  @override
  @JsonKey(name: 'source_url')
  String get sourceUrl;
  @override
  String get language;
  @override
  String get permalink;

  /// Create a copy of UselessfactDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UselessfactDtoImplCopyWith<_$UselessfactDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
