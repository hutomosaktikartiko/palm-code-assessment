import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class PaginatedBooksResponse with _$PaginatedBooksResponse {
  const factory PaginatedBooksResponse({
    int? count,
    String? next,
    String? previous,
    List<BookModel>? results,
  }) = _PaginatedBooksResponse;

  factory PaginatedBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginatedBooksResponseFromJson(json);
}

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    int? id,
    String? title,
    List<AuthorModel>? authors,
    List<String>? summaries,
    List<dynamic>? translators,
    List<String>? subjects,
    List<String>? bookshelves,
    List<String>? languages,
    bool? copyright,
    @JsonKey(name: 'media_type') String? mediaType,
    Map<String, String>? formats,
    @JsonKey(name: 'download_count') int? downloadCount,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}

@freezed
class AuthorModel with _$AuthorModel {
  const factory AuthorModel({
    String? name,
    @JsonKey(name: 'birth_year') int? birthYear,
    @JsonKey(name: 'death_year') int? deathYear,
  }) = _AuthorModel;

  factory AuthorModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorModelFromJson(json);
}
