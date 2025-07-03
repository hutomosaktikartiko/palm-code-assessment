// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )
    success,
    required TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult? Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
    BooksState value,
    $Res Function(BooksState) then,
  ) = _$BooksStateCopyWithImpl<$Res, BooksState>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BooksState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )
    success,
    required TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )
    failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult? Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BooksState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BooksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )
    success,
    required TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )
    failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult? Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BooksState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<BookEntity> allBooks,
    int totalCount,
    String? nextPageUrl,
    String? previousPageUrl,
    bool isPaginating,
    bool hasReachedMax,
  });
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allBooks = null,
    Object? totalCount = null,
    Object? nextPageUrl = freezed,
    Object? previousPageUrl = freezed,
    Object? isPaginating = null,
    Object? hasReachedMax = null,
  }) {
    return _then(
      _$SuccessImpl(
        allBooks: null == allBooks
            ? _value._allBooks
            : allBooks // ignore: cast_nullable_to_non_nullable
                  as List<BookEntity>,
        totalCount: null == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        nextPageUrl: freezed == nextPageUrl
            ? _value.nextPageUrl
            : nextPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        previousPageUrl: freezed == previousPageUrl
            ? _value.previousPageUrl
            : previousPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPaginating: null == isPaginating
            ? _value.isPaginating
            : isPaginating // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasReachedMax: null == hasReachedMax
            ? _value.hasReachedMax
            : hasReachedMax // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({
    required final List<BookEntity> allBooks,
    required this.totalCount,
    required this.nextPageUrl,
    required this.previousPageUrl,
    this.isPaginating = false,
    this.hasReachedMax = false,
  }) : _allBooks = allBooks;

  final List<BookEntity> _allBooks;
  @override
  List<BookEntity> get allBooks {
    if (_allBooks is EqualUnmodifiableListView) return _allBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBooks);
  }

  @override
  final int totalCount;
  @override
  final String? nextPageUrl;
  @override
  final String? previousPageUrl;
  @override
  @JsonKey()
  final bool isPaginating;
  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'BooksState.success(allBooks: $allBooks, totalCount: $totalCount, nextPageUrl: $nextPageUrl, previousPageUrl: $previousPageUrl, isPaginating: $isPaginating, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._allBooks, _allBooks) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.previousPageUrl, previousPageUrl) ||
                other.previousPageUrl == previousPageUrl) &&
            (identical(other.isPaginating, isPaginating) ||
                other.isPaginating == isPaginating) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_allBooks),
    totalCount,
    nextPageUrl,
    previousPageUrl,
    isPaginating,
    hasReachedMax,
  );

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )
    success,
    required TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )
    failure,
  }) {
    return success(
      allBooks,
      totalCount,
      nextPageUrl,
      previousPageUrl,
      isPaginating,
      hasReachedMax,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult? Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
  }) {
    return success?.call(
      allBooks,
      totalCount,
      nextPageUrl,
      previousPageUrl,
      isPaginating,
      hasReachedMax,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
        allBooks,
        totalCount,
        nextPageUrl,
        previousPageUrl,
        isPaginating,
        hasReachedMax,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BooksState {
  const factory _Success({
    required final List<BookEntity> allBooks,
    required final int totalCount,
    required final String? nextPageUrl,
    required final String? previousPageUrl,
    final bool isPaginating,
    final bool hasReachedMax,
  }) = _$SuccessImpl;

  List<BookEntity> get allBooks;
  int get totalCount;
  String? get nextPageUrl;
  String? get previousPageUrl;
  bool get isPaginating;
  bool get hasReachedMax;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
    _$FailureImpl value,
    $Res Function(_$FailureImpl) then,
  ) = __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String message,
    List<BookEntity> allBooks,
    int totalCount,
    String? nextPageUrl,
    String? previousPageUrl,
  });
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
    _$FailureImpl _value,
    $Res Function(_$FailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? allBooks = null,
    Object? totalCount = null,
    Object? nextPageUrl = freezed,
    Object? previousPageUrl = freezed,
  }) {
    return _then(
      _$FailureImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        allBooks: null == allBooks
            ? _value._allBooks
            : allBooks // ignore: cast_nullable_to_non_nullable
                  as List<BookEntity>,
        totalCount: null == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        nextPageUrl: freezed == nextPageUrl
            ? _value.nextPageUrl
            : nextPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        previousPageUrl: freezed == previousPageUrl
            ? _value.previousPageUrl
            : previousPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({
    required this.message,
    final List<BookEntity> allBooks = const [],
    this.totalCount = 0,
    this.nextPageUrl,
    this.previousPageUrl,
  }) : _allBooks = allBooks;

  @override
  final String message;
  final List<BookEntity> _allBooks;
  @override
  @JsonKey()
  List<BookEntity> get allBooks {
    if (_allBooks is EqualUnmodifiableListView) return _allBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBooks);
  }

  @override
  @JsonKey()
  final int totalCount;
  @override
  final String? nextPageUrl;
  @override
  final String? previousPageUrl;

  @override
  String toString() {
    return 'BooksState.failure(message: $message, allBooks: $allBooks, totalCount: $totalCount, nextPageUrl: $nextPageUrl, previousPageUrl: $previousPageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._allBooks, _allBooks) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.previousPageUrl, previousPageUrl) ||
                other.previousPageUrl == previousPageUrl));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_allBooks),
    totalCount,
    nextPageUrl,
    previousPageUrl,
  );

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )
    success,
    required TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )
    failure,
  }) {
    return failure(message, allBooks, totalCount, nextPageUrl, previousPageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult? Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
  }) {
    return failure?.call(
      message,
      allBooks,
      totalCount,
      nextPageUrl,
      previousPageUrl,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
      bool isPaginating,
      bool hasReachedMax,
    )?
    success,
    TResult Function(
      String message,
      List<BookEntity> allBooks,
      int totalCount,
      String? nextPageUrl,
      String? previousPageUrl,
    )?
    failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(
        message,
        allBooks,
        totalCount,
        nextPageUrl,
        previousPageUrl,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements BooksState {
  const factory _Failure({
    required final String message,
    final List<BookEntity> allBooks,
    final int totalCount,
    final String? nextPageUrl,
    final String? previousPageUrl,
  }) = _$FailureImpl;

  String get message;
  List<BookEntity> get allBooks;
  int get totalCount;
  String? get nextPageUrl;
  String? get previousPageUrl;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
