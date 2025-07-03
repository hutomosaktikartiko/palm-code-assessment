import '../../domain/entities/book_entity.dart';
import '../models/book_model.dart';

class BookMapper {
  static PaginatedBooksEntity toPaginatedEntity(
    PaginatedBooksResponse response,
  ) {
    return PaginatedBooksEntity(
      count: response.count ?? 0,
      next: response.next,
      previous: response.previous,
      results: toEntityList(response.results ?? []),
    );
  }

  static BookEntity toEntity(BookModel model) {
    return BookEntity(
      id: model.id ?? 0,
      title: model.title ?? '',
      authors:
          model.authors
              ?.map((author) => AuthorMapper.toEntity(author))
              .toList() ??
          [],
      summaries: model.summaries ?? [],
      translators: _convertTranslators(model.translators),
      subjects: model.subjects ?? [],
      bookshelves: model.bookshelves ?? [],
      languages: model.languages ?? [],
      copyright: model.copyright ?? false,
      mediaType: model.mediaType ?? '',
      formats: _convertFormatsToEntity(model.formats),
      downloadCount: model.downloadCount ?? 0,
    );
  }

  static List<String> _convertTranslators(List<dynamic>? translators) {
    if (translators == null || translators.isEmpty) {
      return [];
    }

    return translators
        .map((translator) {
          if (translator is String) {
            return translator;
          } else if (translator is Map<String, dynamic>) {
            return translator['name']?.toString() ?? '';
          } else {
            return translator.toString();
          }
        })
        .where((name) => name.isNotEmpty)
        .toList();
  }

  static Map<String, dynamic> _convertFormatsToEntity(
    Map<String, String>? formats,
  ) {
    if (formats == null) return {};
    return Map<String, dynamic>.from(formats);
  }

  static BookModel toModel(BookEntity entity) {
    return BookModel(
      id: entity.id,
      title: entity.title,
      authors: entity.authors
          .map((author) => AuthorMapper.toModel(author))
          .toList(),
      summaries: entity.summaries,
      translators: entity.translators,
      subjects: entity.subjects,
      bookshelves: entity.bookshelves,
      languages: entity.languages,
      copyright: entity.copyright,
      mediaType: entity.mediaType,
      formats: _convertFormatsToModel(entity.formats),
      downloadCount: entity.downloadCount,
    );
  }

  static Map<String, String> _convertFormatsToModel(
    Map<String, dynamic> formats,
  ) {
    return formats.map((key, value) => MapEntry(key, value?.toString() ?? ''));
  }

  static List<BookEntity> toEntityList(List<BookModel> models) {
    return models.map((model) => toEntity(model)).toList();
  }

  static List<BookModel> toModelList(List<BookEntity> entities) {
    return entities.map((entity) => toModel(entity)).toList();
  }
}

class AuthorMapper {
  static AuthorEntity toEntity(AuthorModel model) {
    return AuthorEntity(
      name: model.name ?? '',
      birthYear: model.birthYear ?? 0,
      deathYear: model.deathYear ?? 0,
    );
  }

  static AuthorModel toModel(AuthorEntity entity) {
    return AuthorModel(
      name: entity.name,
      birthYear: entity.birthYear,
      deathYear: entity.deathYear,
    );
  }
}
