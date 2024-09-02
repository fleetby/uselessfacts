// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uselessfact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Uselessfact {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get sourceUrl => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get permalink => throw _privateConstructorUsedError;
  bool get saved => throw _privateConstructorUsedError;

  /// Create a copy of Uselessfact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UselessfactCopyWith<Uselessfact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UselessfactCopyWith<$Res> {
  factory $UselessfactCopyWith(
          Uselessfact value, $Res Function(Uselessfact) then) =
      _$UselessfactCopyWithImpl<$Res, Uselessfact>;
  @useResult
  $Res call(
      {String id,
      String text,
      String source,
      String sourceUrl,
      String language,
      String permalink,
      bool saved});
}

/// @nodoc
class _$UselessfactCopyWithImpl<$Res, $Val extends Uselessfact>
    implements $UselessfactCopyWith<$Res> {
  _$UselessfactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Uselessfact
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
    Object? saved = null,
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
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UselessfactImplCopyWith<$Res>
    implements $UselessfactCopyWith<$Res> {
  factory _$$UselessfactImplCopyWith(
          _$UselessfactImpl value, $Res Function(_$UselessfactImpl) then) =
      __$$UselessfactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String source,
      String sourceUrl,
      String language,
      String permalink,
      bool saved});
}

/// @nodoc
class __$$UselessfactImplCopyWithImpl<$Res>
    extends _$UselessfactCopyWithImpl<$Res, _$UselessfactImpl>
    implements _$$UselessfactImplCopyWith<$Res> {
  __$$UselessfactImplCopyWithImpl(
      _$UselessfactImpl _value, $Res Function(_$UselessfactImpl) _then)
      : super(_value, _then);

  /// Create a copy of Uselessfact
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
    Object? saved = null,
  }) {
    return _then(_$UselessfactImpl(
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
      saved: null == saved
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UselessfactImpl implements _Uselessfact {
  const _$UselessfactImpl(
      {required this.id,
      required this.text,
      required this.source,
      required this.sourceUrl,
      required this.language,
      required this.permalink,
      required this.saved});

  @override
  final String id;
  @override
  final String text;
  @override
  final String source;
  @override
  final String sourceUrl;
  @override
  final String language;
  @override
  final String permalink;
  @override
  final bool saved;

  @override
  String toString() {
    return 'Uselessfact(id: $id, text: $text, source: $source, sourceUrl: $sourceUrl, language: $language, permalink: $permalink, saved: $saved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UselessfactImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.saved, saved) || other.saved == saved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, text, source, sourceUrl, language, permalink, saved);

  /// Create a copy of Uselessfact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UselessfactImplCopyWith<_$UselessfactImpl> get copyWith =>
      __$$UselessfactImplCopyWithImpl<_$UselessfactImpl>(this, _$identity);
}

abstract class _Uselessfact implements Uselessfact {
  const factory _Uselessfact(
      {required final String id,
      required final String text,
      required final String source,
      required final String sourceUrl,
      required final String language,
      required final String permalink,
      required final bool saved}) = _$UselessfactImpl;

  @override
  String get id;
  @override
  String get text;
  @override
  String get source;
  @override
  String get sourceUrl;
  @override
  String get language;
  @override
  String get permalink;
  @override
  bool get saved;

  /// Create a copy of Uselessfact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UselessfactImplCopyWith<_$UselessfactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
