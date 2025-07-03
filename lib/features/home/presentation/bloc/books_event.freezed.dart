// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BooksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function() loadNextPage,
    required TResult Function() loadPreviousPage,
    required TResult Function() refreshBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function()? loadNextPage,
    TResult? Function()? loadPreviousPage,
    TResult? Function()? refreshBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function()? loadNextPage,
    TResult Function()? loadPreviousPage,
    TResult Function()? refreshBooks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_LoadPreviousPage value) loadPreviousPage,
    required TResult Function(_RefreshBooks value) refreshBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult? Function(_RefreshBooks value)? refreshBooks,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult Function(_RefreshBooks value)? refreshBooks,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksEventCopyWith<$Res> {
  factory $BooksEventCopyWith(
    BooksEvent value,
    $Res Function(BooksEvent) then,
  ) = _$BooksEventCopyWithImpl<$Res, BooksEvent>;
}

/// @nodoc
class _$BooksEventCopyWithImpl<$Res, $Val extends BooksEvent>
    implements $BooksEventCopyWith<$Res> {
  _$BooksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetBooksImplCopyWith<$Res> {
  factory _$$GetBooksImplCopyWith(
    _$GetBooksImpl value,
    $Res Function(_$GetBooksImpl) then,
  ) = __$$GetBooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBooksImplCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$GetBooksImpl>
    implements _$$GetBooksImplCopyWith<$Res> {
  __$$GetBooksImplCopyWithImpl(
    _$GetBooksImpl _value,
    $Res Function(_$GetBooksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetBooksImpl implements _GetBooks {
  const _$GetBooksImpl();

  @override
  String toString() {
    return 'BooksEvent.getBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBooksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function() loadNextPage,
    required TResult Function() loadPreviousPage,
    required TResult Function() refreshBooks,
  }) {
    return getBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function()? loadNextPage,
    TResult? Function()? loadPreviousPage,
    TResult? Function()? refreshBooks,
  }) {
    return getBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function()? loadNextPage,
    TResult Function()? loadPreviousPage,
    TResult Function()? refreshBooks,
    required TResult orElse(),
  }) {
    if (getBooks != null) {
      return getBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_LoadPreviousPage value) loadPreviousPage,
    required TResult Function(_RefreshBooks value) refreshBooks,
  }) {
    return getBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult? Function(_RefreshBooks value)? refreshBooks,
  }) {
    return getBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult Function(_RefreshBooks value)? refreshBooks,
    required TResult orElse(),
  }) {
    if (getBooks != null) {
      return getBooks(this);
    }
    return orElse();
  }
}

abstract class _GetBooks implements BooksEvent {
  const factory _GetBooks() = _$GetBooksImpl;
}

/// @nodoc
abstract class _$$LoadNextPageImplCopyWith<$Res> {
  factory _$$LoadNextPageImplCopyWith(
    _$LoadNextPageImpl value,
    $Res Function(_$LoadNextPageImpl) then,
  ) = __$$LoadNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNextPageImplCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$LoadNextPageImpl>
    implements _$$LoadNextPageImplCopyWith<$Res> {
  __$$LoadNextPageImplCopyWithImpl(
    _$LoadNextPageImpl _value,
    $Res Function(_$LoadNextPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadNextPageImpl implements _LoadNextPage {
  const _$LoadNextPageImpl();

  @override
  String toString() {
    return 'BooksEvent.loadNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function() loadNextPage,
    required TResult Function() loadPreviousPage,
    required TResult Function() refreshBooks,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function()? loadNextPage,
    TResult? Function()? loadPreviousPage,
    TResult? Function()? refreshBooks,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function()? loadNextPage,
    TResult Function()? loadPreviousPage,
    TResult Function()? refreshBooks,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_LoadPreviousPage value) loadPreviousPage,
    required TResult Function(_RefreshBooks value) refreshBooks,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult? Function(_RefreshBooks value)? refreshBooks,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult Function(_RefreshBooks value)? refreshBooks,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class _LoadNextPage implements BooksEvent {
  const factory _LoadNextPage() = _$LoadNextPageImpl;
}

/// @nodoc
abstract class _$$LoadPreviousPageImplCopyWith<$Res> {
  factory _$$LoadPreviousPageImplCopyWith(
    _$LoadPreviousPageImpl value,
    $Res Function(_$LoadPreviousPageImpl) then,
  ) = __$$LoadPreviousPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadPreviousPageImplCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$LoadPreviousPageImpl>
    implements _$$LoadPreviousPageImplCopyWith<$Res> {
  __$$LoadPreviousPageImplCopyWithImpl(
    _$LoadPreviousPageImpl _value,
    $Res Function(_$LoadPreviousPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadPreviousPageImpl implements _LoadPreviousPage {
  const _$LoadPreviousPageImpl();

  @override
  String toString() {
    return 'BooksEvent.loadPreviousPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadPreviousPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function() loadNextPage,
    required TResult Function() loadPreviousPage,
    required TResult Function() refreshBooks,
  }) {
    return loadPreviousPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function()? loadNextPage,
    TResult? Function()? loadPreviousPage,
    TResult? Function()? refreshBooks,
  }) {
    return loadPreviousPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function()? loadNextPage,
    TResult Function()? loadPreviousPage,
    TResult Function()? refreshBooks,
    required TResult orElse(),
  }) {
    if (loadPreviousPage != null) {
      return loadPreviousPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_LoadPreviousPage value) loadPreviousPage,
    required TResult Function(_RefreshBooks value) refreshBooks,
  }) {
    return loadPreviousPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult? Function(_RefreshBooks value)? refreshBooks,
  }) {
    return loadPreviousPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult Function(_RefreshBooks value)? refreshBooks,
    required TResult orElse(),
  }) {
    if (loadPreviousPage != null) {
      return loadPreviousPage(this);
    }
    return orElse();
  }
}

abstract class _LoadPreviousPage implements BooksEvent {
  const factory _LoadPreviousPage() = _$LoadPreviousPageImpl;
}

/// @nodoc
abstract class _$$RefreshBooksImplCopyWith<$Res> {
  factory _$$RefreshBooksImplCopyWith(
    _$RefreshBooksImpl value,
    $Res Function(_$RefreshBooksImpl) then,
  ) = __$$RefreshBooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshBooksImplCopyWithImpl<$Res>
    extends _$BooksEventCopyWithImpl<$Res, _$RefreshBooksImpl>
    implements _$$RefreshBooksImplCopyWith<$Res> {
  __$$RefreshBooksImplCopyWithImpl(
    _$RefreshBooksImpl _value,
    $Res Function(_$RefreshBooksImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshBooksImpl implements _RefreshBooks {
  const _$RefreshBooksImpl();

  @override
  String toString() {
    return 'BooksEvent.refreshBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshBooksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function() loadNextPage,
    required TResult Function() loadPreviousPage,
    required TResult Function() refreshBooks,
  }) {
    return refreshBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function()? loadNextPage,
    TResult? Function()? loadPreviousPage,
    TResult? Function()? refreshBooks,
  }) {
    return refreshBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function()? loadNextPage,
    TResult Function()? loadPreviousPage,
    TResult Function()? refreshBooks,
    required TResult orElse(),
  }) {
    if (refreshBooks != null) {
      return refreshBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBooks value) getBooks,
    required TResult Function(_LoadNextPage value) loadNextPage,
    required TResult Function(_LoadPreviousPage value) loadPreviousPage,
    required TResult Function(_RefreshBooks value) refreshBooks,
  }) {
    return refreshBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetBooks value)? getBooks,
    TResult? Function(_LoadNextPage value)? loadNextPage,
    TResult? Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult? Function(_RefreshBooks value)? refreshBooks,
  }) {
    return refreshBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBooks value)? getBooks,
    TResult Function(_LoadNextPage value)? loadNextPage,
    TResult Function(_LoadPreviousPage value)? loadPreviousPage,
    TResult Function(_RefreshBooks value)? refreshBooks,
    required TResult orElse(),
  }) {
    if (refreshBooks != null) {
      return refreshBooks(this);
    }
    return orElse();
  }
}

abstract class _RefreshBooks implements BooksEvent {
  const factory _RefreshBooks() = _$RefreshBooksImpl;
}
