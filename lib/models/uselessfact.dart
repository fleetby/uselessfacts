import 'package:freezed_annotation/freezed_annotation.dart';

part 'uselessfact.freezed.dart';

@freezed
class Uselessfact with _$Uselessfact {
  const factory Uselessfact({
    required String id,
    required String text,
    required String source,
    required String sourceUrl,
    required String language,
    required String permalink,
    required bool saved,
  }) = _Uselessfact;
}
