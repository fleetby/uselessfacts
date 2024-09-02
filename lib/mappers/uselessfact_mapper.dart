import 'package:uselessfacts/dtos/uselessfact_dto.dart';
import 'package:uselessfacts/models/uselessfact.dart';
import 'package:uselessfacts/persistence/app_db.dart';

extension UselessfactMapperOnTableData on UselessfactsTableData {
  Uselessfact toModel() => Uselessfact(
        id: remoteId,
        text: textContent,
        source: source,
        sourceUrl: sourceUrl,
        language: language,
        permalink: permalink,
        saved: true,
      );
}

extension UselessfactMapperOnDto on UselessfactDto {
  Uselessfact toModel({required bool saved}) => Uselessfact(
        id: id,
        text: text,
        source: source,
        sourceUrl: sourceUrl,
        language: language,
        permalink: permalink,
        saved: saved,
      );
}
