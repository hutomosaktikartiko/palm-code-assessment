class PaginatedBooksEntity {
  final int count;
  final String? next;
  final String? previous;
  final List<BookEntity> results;

  const PaginatedBooksEntity({
    this.count = 0,
    this.next,
    this.previous,
    this.results = const [],
  });
}

class BookEntity {
  final int id;
  final String title;
  final List<AuthorEntity> authors;
  final List<String> summaries;
  final List<String> translators;
  final List<String> subjects;
  final List<String> bookshelves;
  final List<String> languages;
  final bool copyright;
  final String mediaType;
  final Map<String, dynamic> formats;
  final int downloadCount;

  const BookEntity({
    this.id = 0,
    this.title = '',
    this.authors = const [],
    this.summaries = const [],
    this.translators = const [],
    this.subjects = const [],
    this.bookshelves = const [],
    this.languages = const [],
    this.copyright = false,
    this.mediaType = '',
    this.formats = const {},
    this.downloadCount = 0,
  });
}

class AuthorEntity {
  final String name;
  final int birthYear;
  final int deathYear;

  const AuthorEntity({this.name = '', this.birthYear = 0, this.deathYear = 0});
}
