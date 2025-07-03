// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaginatedBooksResponse _$PaginatedBooksResponseFromJson(
  Map<String, dynamic> json,
) {
  return _PaginatedBooksResponse.fromJson(json);
}

/// @nodoc
mixin _$PaginatedBooksResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<BookModel>? get results => throw _privateConstructorUsedError;

  /// Serializes this PaginatedBooksResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedBooksResponseCopyWith<PaginatedBooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedBooksResponseCopyWith<$Res> {
  factory $PaginatedBooksResponseCopyWith(
    PaginatedBooksResponse value,
    $Res Function(PaginatedBooksResponse) then,
  ) = _$PaginatedBooksResponseCopyWithImpl<$Res, PaginatedBooksResponse>;
  @useResult
  $Res call({
    int? count,
    String? next,
    String? previous,
    List<BookModel>? results,
  });
}

/// @nodoc
class _$PaginatedBooksResponseCopyWithImpl<
  $Res,
  $Val extends PaginatedBooksResponse
>
    implements $PaginatedBooksResponseCopyWith<$Res> {
  _$PaginatedBooksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(
      _value.copyWith(
            count: freezed == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int?,
            next: freezed == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                      as String?,
            previous: freezed == previous
                ? _value.previous
                : previous // ignore: cast_nullable_to_non_nullable
                      as String?,
            results: freezed == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<BookModel>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaginatedBooksResponseImplCopyWith<$Res>
    implements $PaginatedBooksResponseCopyWith<$Res> {
  factory _$$PaginatedBooksResponseImplCopyWith(
    _$PaginatedBooksResponseImpl value,
    $Res Function(_$PaginatedBooksResponseImpl) then,
  ) = __$$PaginatedBooksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? count,
    String? next,
    String? previous,
    List<BookModel>? results,
  });
}

/// @nodoc
class __$$PaginatedBooksResponseImplCopyWithImpl<$Res>
    extends
        _$PaginatedBooksResponseCopyWithImpl<$Res, _$PaginatedBooksResponseImpl>
    implements _$$PaginatedBooksResponseImplCopyWith<$Res> {
  __$$PaginatedBooksResponseImplCopyWithImpl(
    _$PaginatedBooksResponseImpl _value,
    $Res Function(_$PaginatedBooksResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginatedBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(
      _$PaginatedBooksResponseImpl(
        count: freezed == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int?,
        next: freezed == next
            ? _value.next
            : next // ignore: cast_nullable_to_non_nullable
                  as String?,
        previous: freezed == previous
            ? _value.previous
            : previous // ignore: cast_nullable_to_non_nullable
                  as String?,
        results: freezed == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<BookModel>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedBooksResponseImpl implements _PaginatedBooksResponse {
  const _$PaginatedBooksResponseImpl({
    this.count,
    this.next,
    this.previous,
    final List<BookModel>? results,
  }) : _results = results;

  factory _$PaginatedBooksResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedBooksResponseImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<BookModel>? _results;
  @override
  List<BookModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaginatedBooksResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedBooksResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    count,
    next,
    previous,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of PaginatedBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedBooksResponseImplCopyWith<_$PaginatedBooksResponseImpl>
  get copyWith =>
      __$$PaginatedBooksResponseImplCopyWithImpl<_$PaginatedBooksResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedBooksResponseImplToJson(this);
  }
}

abstract class _PaginatedBooksResponse implements PaginatedBooksResponse {
  const factory _PaginatedBooksResponse({
    final int? count,
    final String? next,
    final String? previous,
    final List<BookModel>? results,
  }) = _$PaginatedBooksResponseImpl;

  factory _PaginatedBooksResponse.fromJson(Map<String, dynamic> json) =
      _$PaginatedBooksResponseImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<BookModel>? get results;

  /// Create a copy of PaginatedBooksResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedBooksResponseImplCopyWith<_$PaginatedBooksResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<AuthorModel>? get authors => throw _privateConstructorUsedError;
  List<String>? get summaries => throw _privateConstructorUsedError;
  List<dynamic>? get translators => throw _privateConstructorUsedError;
  List<String>? get subjects => throw _privateConstructorUsedError;
  List<String>? get bookshelves => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  bool? get copyright => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  String? get mediaType => throw _privateConstructorUsedError;
  Map<String, String>? get formats => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_count')
  int? get downloadCount => throw _privateConstructorUsedError;

  /// Serializes this BookModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? authors = freezed,
    Object? summaries = freezed,
    Object? translators = freezed,
    Object? subjects = freezed,
    Object? bookshelves = freezed,
    Object? languages = freezed,
    Object? copyright = freezed,
    Object? mediaType = freezed,
    Object? formats = freezed,
    Object? downloadCount = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            authors: freezed == authors
                ? _value.authors
                : authors // ignore: cast_nullable_to_non_nullable
                      as List<AuthorModel>?,
            summaries: freezed == summaries
                ? _value.summaries
                : summaries // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            translators: freezed == translators
                ? _value.translators
                : translators // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            subjects: freezed == subjects
                ? _value.subjects
                : subjects // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            bookshelves: freezed == bookshelves
                ? _value.bookshelves
                : bookshelves // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            languages: freezed == languages
                ? _value.languages
                : languages // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            copyright: freezed == copyright
                ? _value.copyright
                : copyright // ignore: cast_nullable_to_non_nullable
                      as bool?,
            mediaType: freezed == mediaType
                ? _value.mediaType
                : mediaType // ignore: cast_nullable_to_non_nullable
                      as String?,
            formats: freezed == formats
                ? _value.formats
                : formats // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>?,
            downloadCount: freezed == downloadCount
                ? _value.downloadCount
                : downloadCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookModelImplCopyWith<$Res>
    implements $BookModelCopyWith<$Res> {
  factory _$$BookModelImplCopyWith(
    _$BookModelImpl value,
    $Res Function(_$BookModelImpl) then,
  ) = __$$BookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
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
  });
}

/// @nodoc
class __$$BookModelImplCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$BookModelImpl>
    implements _$$BookModelImplCopyWith<$Res> {
  __$$BookModelImplCopyWithImpl(
    _$BookModelImpl _value,
    $Res Function(_$BookModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? authors = freezed,
    Object? summaries = freezed,
    Object? translators = freezed,
    Object? subjects = freezed,
    Object? bookshelves = freezed,
    Object? languages = freezed,
    Object? copyright = freezed,
    Object? mediaType = freezed,
    Object? formats = freezed,
    Object? downloadCount = freezed,
  }) {
    return _then(
      _$BookModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        authors: freezed == authors
            ? _value._authors
            : authors // ignore: cast_nullable_to_non_nullable
                  as List<AuthorModel>?,
        summaries: freezed == summaries
            ? _value._summaries
            : summaries // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        translators: freezed == translators
            ? _value._translators
            : translators // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        subjects: freezed == subjects
            ? _value._subjects
            : subjects // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        bookshelves: freezed == bookshelves
            ? _value._bookshelves
            : bookshelves // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        languages: freezed == languages
            ? _value._languages
            : languages // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        copyright: freezed == copyright
            ? _value.copyright
            : copyright // ignore: cast_nullable_to_non_nullable
                  as bool?,
        mediaType: freezed == mediaType
            ? _value.mediaType
            : mediaType // ignore: cast_nullable_to_non_nullable
                  as String?,
        formats: freezed == formats
            ? _value._formats
            : formats // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>?,
        downloadCount: freezed == downloadCount
            ? _value.downloadCount
            : downloadCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookModelImpl implements _BookModel {
  const _$BookModelImpl({
    this.id,
    this.title,
    final List<AuthorModel>? authors,
    final List<String>? summaries,
    final List<dynamic>? translators,
    final List<String>? subjects,
    final List<String>? bookshelves,
    final List<String>? languages,
    this.copyright,
    @JsonKey(name: 'media_type') this.mediaType,
    final Map<String, String>? formats,
    @JsonKey(name: 'download_count') this.downloadCount,
  }) : _authors = authors,
       _summaries = summaries,
       _translators = translators,
       _subjects = subjects,
       _bookshelves = bookshelves,
       _languages = languages,
       _formats = formats;

  factory _$BookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  final List<AuthorModel>? _authors;
  @override
  List<AuthorModel>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _summaries;
  @override
  List<String>? get summaries {
    final value = _summaries;
    if (value == null) return null;
    if (_summaries is EqualUnmodifiableListView) return _summaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _translators;
  @override
  List<dynamic>? get translators {
    final value = _translators;
    if (value == null) return null;
    if (_translators is EqualUnmodifiableListView) return _translators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _subjects;
  @override
  List<String>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _bookshelves;
  @override
  List<String>? get bookshelves {
    final value = _bookshelves;
    if (value == null) return null;
    if (_bookshelves is EqualUnmodifiableListView) return _bookshelves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? copyright;
  @override
  @JsonKey(name: 'media_type')
  final String? mediaType;
  final Map<String, String>? _formats;
  @override
  Map<String, String>? get formats {
    final value = _formats;
    if (value == null) return null;
    if (_formats is EqualUnmodifiableMapView) return _formats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'download_count')
  final int? downloadCount;

  @override
  String toString() {
    return 'BookModel(id: $id, title: $title, authors: $authors, summaries: $summaries, translators: $translators, subjects: $subjects, bookshelves: $bookshelves, languages: $languages, copyright: $copyright, mediaType: $mediaType, formats: $formats, downloadCount: $downloadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._authors, _authors) &&
            const DeepCollectionEquality().equals(
              other._summaries,
              _summaries,
            ) &&
            const DeepCollectionEquality().equals(
              other._translators,
              _translators,
            ) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects) &&
            const DeepCollectionEquality().equals(
              other._bookshelves,
              _bookshelves,
            ) &&
            const DeepCollectionEquality().equals(
              other._languages,
              _languages,
            ) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            const DeepCollectionEquality().equals(other._formats, _formats) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    const DeepCollectionEquality().hash(_authors),
    const DeepCollectionEquality().hash(_summaries),
    const DeepCollectionEquality().hash(_translators),
    const DeepCollectionEquality().hash(_subjects),
    const DeepCollectionEquality().hash(_bookshelves),
    const DeepCollectionEquality().hash(_languages),
    copyright,
    mediaType,
    const DeepCollectionEquality().hash(_formats),
    downloadCount,
  );

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      __$$BookModelImplCopyWithImpl<_$BookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookModelImplToJson(this);
  }
}

abstract class _BookModel implements BookModel {
  const factory _BookModel({
    final int? id,
    final String? title,
    final List<AuthorModel>? authors,
    final List<String>? summaries,
    final List<dynamic>? translators,
    final List<String>? subjects,
    final List<String>? bookshelves,
    final List<String>? languages,
    final bool? copyright,
    @JsonKey(name: 'media_type') final String? mediaType,
    final Map<String, String>? formats,
    @JsonKey(name: 'download_count') final int? downloadCount,
  }) = _$BookModelImpl;

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$BookModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  List<AuthorModel>? get authors;
  @override
  List<String>? get summaries;
  @override
  List<dynamic>? get translators;
  @override
  List<String>? get subjects;
  @override
  List<String>? get bookshelves;
  @override
  List<String>? get languages;
  @override
  bool? get copyright;
  @override
  @JsonKey(name: 'media_type')
  String? get mediaType;
  @override
  Map<String, String>? get formats;
  @override
  @JsonKey(name: 'download_count')
  int? get downloadCount;

  /// Create a copy of BookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorModel _$AuthorModelFromJson(Map<String, dynamic> json) {
  return _AuthorModel.fromJson(json);
}

/// @nodoc
mixin _$AuthorModel {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_year')
  int? get birthYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'death_year')
  int? get deathYear => throw _privateConstructorUsedError;

  /// Serializes this AuthorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorModelCopyWith<AuthorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorModelCopyWith<$Res> {
  factory $AuthorModelCopyWith(
    AuthorModel value,
    $Res Function(AuthorModel) then,
  ) = _$AuthorModelCopyWithImpl<$Res, AuthorModel>;
  @useResult
  $Res call({
    String? name,
    @JsonKey(name: 'birth_year') int? birthYear,
    @JsonKey(name: 'death_year') int? deathYear,
  });
}

/// @nodoc
class _$AuthorModelCopyWithImpl<$Res, $Val extends AuthorModel>
    implements $AuthorModelCopyWith<$Res> {
  _$AuthorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? birthYear = freezed,
    Object? deathYear = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            birthYear: freezed == birthYear
                ? _value.birthYear
                : birthYear // ignore: cast_nullable_to_non_nullable
                      as int?,
            deathYear: freezed == deathYear
                ? _value.deathYear
                : deathYear // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthorModelImplCopyWith<$Res>
    implements $AuthorModelCopyWith<$Res> {
  factory _$$AuthorModelImplCopyWith(
    _$AuthorModelImpl value,
    $Res Function(_$AuthorModelImpl) then,
  ) = __$$AuthorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    @JsonKey(name: 'birth_year') int? birthYear,
    @JsonKey(name: 'death_year') int? deathYear,
  });
}

/// @nodoc
class __$$AuthorModelImplCopyWithImpl<$Res>
    extends _$AuthorModelCopyWithImpl<$Res, _$AuthorModelImpl>
    implements _$$AuthorModelImplCopyWith<$Res> {
  __$$AuthorModelImplCopyWithImpl(
    _$AuthorModelImpl _value,
    $Res Function(_$AuthorModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? birthYear = freezed,
    Object? deathYear = freezed,
  }) {
    return _then(
      _$AuthorModelImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthYear: freezed == birthYear
            ? _value.birthYear
            : birthYear // ignore: cast_nullable_to_non_nullable
                  as int?,
        deathYear: freezed == deathYear
            ? _value.deathYear
            : deathYear // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorModelImpl implements _AuthorModel {
  const _$AuthorModelImpl({
    this.name,
    @JsonKey(name: 'birth_year') this.birthYear,
    @JsonKey(name: 'death_year') this.deathYear,
  });

  factory _$AuthorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorModelImplFromJson(json);

  @override
  final String? name;
  @override
  @JsonKey(name: 'birth_year')
  final int? birthYear;
  @override
  @JsonKey(name: 'death_year')
  final int? deathYear;

  @override
  String toString() {
    return 'AuthorModel(name: $name, birthYear: $birthYear, deathYear: $deathYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.deathYear, deathYear) ||
                other.deathYear == deathYear));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, birthYear, deathYear);

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorModelImplCopyWith<_$AuthorModelImpl> get copyWith =>
      __$$AuthorModelImplCopyWithImpl<_$AuthorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorModelImplToJson(this);
  }
}

abstract class _AuthorModel implements AuthorModel {
  const factory _AuthorModel({
    final String? name,
    @JsonKey(name: 'birth_year') final int? birthYear,
    @JsonKey(name: 'death_year') final int? deathYear,
  }) = _$AuthorModelImpl;

  factory _AuthorModel.fromJson(Map<String, dynamic> json) =
      _$AuthorModelImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(name: 'birth_year')
  int? get birthYear;
  @override
  @JsonKey(name: 'death_year')
  int? get deathYear;

  /// Create a copy of AuthorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorModelImplCopyWith<_$AuthorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
